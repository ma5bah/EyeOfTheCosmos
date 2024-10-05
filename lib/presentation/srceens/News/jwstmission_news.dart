import 'package:eyesofcosmos/data/model/news_item.dart';
import 'package:eyesofcosmos/data/utility/network_caller.dart';
import 'package:eyesofcosmos/presentation/srceens/News/news_details_screen.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/presentation/widgets/NewsCard.dart';
import 'package:eyesofcosmos/presentation/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Import your NewsItem model and API helper function

class JwstmissionNews extends StatefulWidget {
  const JwstmissionNews({super.key});

  @override
  State<JwstmissionNews> createState() => _JwstmissionNewsState();
}

class _JwstmissionNewsState extends State<JwstmissionNews> {
  // State to hold the news items
  List<NewsItem> newsItems = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadNews();
 fetchAllImages();
  }

  // Method to fetch the news items from the API
  Future<void> _loadNews() async {
    try {
      List<NewsItem> fetchedNews =
          await fetchSingleNewsPage(1); // Call your API function
      setState(() {
        newsItems = fetchedNews;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching news: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set AppBar icons to white
        ),
      ),
      drawer: const DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.onBoardingBackground3Jpg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'News Daily',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: _buildContent(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (newsItems.isEmpty) {
      return const Center(
        child: Text(
          "No news available",
          style: TextStyle(color: Colors.white),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          final newsItem = newsItems[index]; // Get the news item
          return InkWell(
            onTap: () {
              Get.to(NewsDetailsScreen(
                  item: newsItem, // Pass the news item to details screen
                  ));
            },
            child: NewsCard(
              title: newsItem.title,
              excerpt: newsItem.excerpt,
              thumbnailUrl: newsItem.thumbnailImg?.url ?? '',
              publishedDate: newsItem.publishedDate,
            ),
          );
        },
      );
    }
  }
}
