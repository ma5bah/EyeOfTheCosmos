import 'package:eyesofcosmos/data/model/image_item.dart';
import 'package:eyesofcosmos/data/utility/network_caller.dart';
import 'package:eyesofcosmos/presentation/widgets/image_gallery_item.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class ExplorePage extends StatelessWidget {
  final String category;

  ExplorePage({required this.category});

  // Fetching the image data from the API
  Future<List<ImageData>> fetchExoplanetImages() async {
    final response = await fetchAllImages();
    List<ImageData> retData = [];

    for (var item in response) {
      if (item.keywords.contains(category)) {
        retData.add(item);
      }
    }

    return retData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore $category'),
      ),
      body: FutureBuilder<List<ImageData>>(
        future: fetchExoplanetImages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available.'));
          } else {
            final images = snapshot.data ?? [];
            return ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                final imageData = images[index];
                return ImageCard(imageData: imageData);
              },
            );
          }
        },
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final ImageData imageData;

  ImageCard({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section
          CachedNetworkImage(
            imageUrl: imageData.downloadUrls.last.url,
            placeholder: (context, url) => Container(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title of the image
                Text(
                  imageData.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                // Release date or description
                Text(
                  'Release Date: ${imageData.releaseDate}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8),
                // Caption or short description
                Text(
                  imageData.caption,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 8),
                // Action button (optional)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Add your action here, for example, navigate to details page
                      },
                      child: TextButton(
                onPressed: (){
                  Get.to(ImageGalleryItem(imageData: imageData));
                },
                        child: Text("Learn More"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
