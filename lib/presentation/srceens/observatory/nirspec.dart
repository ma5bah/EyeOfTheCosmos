import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:eyesofcosmos/presentation/srceens/observatory/nirspec_details.dart';

class ImageGalleryPage extends StatefulWidget {
  final String category;

  const ImageGalleryPage({required this.category, Key? key}) : super(key: key);

  @override
  _ImageGalleryPageState createState() => _ImageGalleryPageState();
}

class _ImageGalleryPageState extends State<ImageGalleryPage> {
  List<Map<String, String>> imageDetails = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  Future<void> fetchImages() async {
    final url = 'https://esawebb.org/images/archive/category/${widget.category.toLowerCase().replaceAll(" ","")}';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final elements = document.getElementsByTagName('img');

      setState(() {
        imageDetails = elements
            .map((element) {
              final src = element.attributes['src'];
              final titleElement =
                  element.attributes['alt']; // Get the alt text for the title

              if (src != null && src.isNotEmpty && !src.contains('logo')) {
                final imageUrl =
                    src.startsWith('http') ? src : 'https://esawebb.org$src';

                // Attempt to find the link to the details page
                var linkElement = element.parent
                    ?.querySelector('a'); // Find the <a> tag for details link
                final detailPageUrl = linkElement != null
                    ? 'https://esawebb.org${linkElement.attributes['href']}'
                    : '';

                return {
                  'url': imageUrl,
                  'title': titleElement ?? 'No Title',
                  'description':
                      'Read more details: [click here]($url)', // Updated description
                  'detailPageUrl': detailPageUrl, // Store the details page URL
                } as Map<String, String>; // Cast to Map<String, String>
              }
              return {};
            })
            .where((image) => image.isNotEmpty) // Filter out empty entries
            // .take(10) // Limit to 10 images
            .cast<
                Map<String, String>>() // Ensure the list is of the correct type
            .toList();
        isLoading = false; // Update loading state
      });
    } else {
      setState(() {
        isLoading = false; // Stop loading on error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : imageDetails.isEmpty
              ? Center(
                  child: Text('No images found',
                      style: TextStyle(color: Colors.white)))
              : ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: imageDetails.length,
                  itemBuilder: (context, index) {
                    final image = imageDetails[index];
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the ImageDetailPage with the image URL and description
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDetailPage(
                              imageUrl: image['url']!,
                              title: image['title']!,
                              description: image['description']!,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0), // Space between rows
                        child: Image.network(
                          image['url']!,
                          fit: BoxFit.cover,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                                child: Icon(Icons.error, color: Colors.red));
                          },
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
