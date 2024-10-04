import 'package:eyesofcosmos/data/model/image_item.dart';
import 'package:eyesofcosmos/data/utility/network_caller.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExplorePage extends StatelessWidget {
  final category;

  ExplorePage({required this.category});


  // Fetching the image data from the API
  Future<List<ImageData>> fetchExoplanetImages() async {
    final response = await fetchAllImages();
    List<ImageData> ret_data=[];
    for(var item in response){
      if(item.keywords.contains(category)){
        ret_data.add(item);
      }
    }
    return ret_data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Exoplanets'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchImagesByCategory(category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available.'));
          } else {
            final images = snapshot.data ?? [];
            print('Images: $images');
            return Center(child: Text("Got The data"));
            // For demo purposes, let's assume images[0], images[1], and images[2] have valid URLs
            // final largeImageUrl =
            //     images[0]['imageUrl']; // Modify with actual API structure
            // final smallImageUrl1 =
            //     images[1]['imageUrl']; // Modify with actual API structure
            // final smallImageUrl2 =
            //     images[2]['imageUrl']; // Modify with actual API structure
            // final smallImageUrl3 =
            //     images[3]['imageUrl']; // Modify with actual API structure

            // return SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       // Large Image at the top
            //       CachedNetworkImage(
            //         imageUrl: largeImageUrl,
            //         placeholder: (context, url) => CircularProgressIndicator(),
            //         errorWidget: (context, url, error) => Icon(Icons.error),
            //         height: 300,
            //         fit: BoxFit.cover,
            //       ),
            //       SizedBox(height: 10),
            //       // Smaller images in a row
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           // Small Image 1
            //           CachedNetworkImage(
            //             imageUrl: smallImageUrl1,
            //             placeholder: (context, url) =>
            //                 CircularProgressIndicator(),
            //             errorWidget: (context, url, error) => Icon(Icons.error),
            //             height: 150,
            //             width: 100,
            //             fit: BoxFit.cover,
            //           ),
            //           // Small Image 2
            //           CachedNetworkImage(
            //             imageUrl: smallImageUrl2,
            //             placeholder: (context, url) =>
            //                 CircularProgressIndicator(),
            //             errorWidget: (context, url, error) => Icon(Icons.error),
            //             height: 150,
            //             width: 100,
            //             fit: BoxFit.cover,
            //           ),
            //           // Small Image 3
            //           CachedNetworkImage(
            //             imageUrl: smallImageUrl3,
            //             placeholder: (context, url) =>
            //                 CircularProgressIndicator(),
            //             errorWidget: (context, url, error) => Icon(Icons.error),
            //             height: 150,
            //             width: 100,
            //             fit: BoxFit.cover,
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 20),
            //       // Additional content (optional)
            //       Text(
            //         'EXOPLANET TRANSMISSION SPECTRUM',
            //         style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white),
            //       ),
            //       // Placeholder for any additional charts or images
            //       SizedBox(height: 20),
            //       Container(
            //         height: 200,
            //         color: Colors.black, // Placeholder container for the chart
            //         child: Center(
            //           child: Text(
            //             'Transmission Spectrum Data Goes Here',
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // );
            //
          }
        },
      ),
    );
  }
}
