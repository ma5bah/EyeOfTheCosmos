// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eyesofcosmos/data/model/news_item.dart';

class NewsDetailsScreen extends StatelessWidget {
  final NewsItem item;
  const NewsDetailsScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ), // 30% of the screen height
              width: double.infinity,
              child: Image.network(
                item.thumbnailImg?.url??"",
                fit: BoxFit
                    .cover, // Ensures the image covers the container without distorting aspect ratio
              ),
            ), // Placeholder for an image at the bottom
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black,
              child: Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                item.excerpt,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
