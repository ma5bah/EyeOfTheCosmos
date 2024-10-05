import 'package:eyesofcosmos/data/model/image_item.dart';
import 'package:flutter/material.dart';

class ImageGalleryItem extends StatelessWidget {
  final ImageData imageData;

  ImageGalleryItem({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageData.title),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Add information handling here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Text(
              imageData.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'NIRSpec Spectrum',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            // Image Section (Use Network Image)
            Container(
              height: 200,
              child: Image.network(
                imageData.downloadUrls.last.url,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // About This Image Section
            Text(
              'About This Image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            // Release Information
            Text(
              'Release Date: ${imageData.releaseDate}',
              style: TextStyle(color: Colors.white70),
            ),
            Text(
              'Read the Release: ${imageData.id}',
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 8),
            // Download Section
            GestureDetector(
              onTap: () {
                // Handle download action
              },
              child: Text(
                'Download Image: Image Size (${imageData.downloadUrls.first.size})',
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 16),
            // Caption Section
            Text(
              'Caption',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              imageData.caption,
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 16),
            // Keywords Section
            Text(
              'Keywords: ${imageData.keywords.join(", ")}',
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 16),
            // Learn More Button
          ],
        ),
      ),
      backgroundColor: Colors.black, // Set background to black
    );
  }
}
