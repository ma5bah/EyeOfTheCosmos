// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:html/parser.dart' as parser;

// class ExploreGalaxyPage extends StatefulWidget {
//   @override
//   _ExploreGalaxyPageState createState() => _ExploreGalaxyPageState();
// }

// class _ExploreGalaxyPageState extends State<ExploreGalaxyPage> {
//   late Future<List<Map<String, String>>> images;

//   @override
//   void initState() {
//     super.initState();
//     images = fetchImages();
//   }

//   Future<List<Map<String, String>>> fetchImages() async {
//     final url =
//         'https://webbtelescope.org/images?Category=03-galaxies&itemsPerPage=50&page=1';
//     final response = await Dio().get(url,
//         options: Options(
//           headers: {
//             'User-Agent':
//                 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
//           },
//         ));

//     if (response.statusCode == 200) {
//       final document = parser.parse(response.data);
//       final elements = document.getElementsByTagName('img');

//       List<Map<String, String>> imageDetails = elements
//           .map((element) {
//             final src = element.attributes['src'];
//             final titleElement = element.attributes['alt'];

//             if (src != null && src.isNotEmpty && !src.contains('logo')) {
//               final imageUrl = src.startsWith('http')
//                   ? src
//                   : 'https://webbtelescope.org$src';
//               return {
//                 'url': imageUrl,
//                 'title': titleElement ?? 'No Title',
//               };
//             }
//             return {}; // Return an empty map if conditions are not met
//           })
//           .where((image) => image.isNotEmpty)
//           .toList();

//       return imageDetails;
//     } else {
//       throw Exception('Failed to load images');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Explore Galaxy'),
//         backgroundColor: Colors.black,
//       ),
//       backgroundColor: Colors.black,
//       body: FutureBuilder<List<Map<String, String>>>(
//         future: images,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(
//                 child: Text('Error: ${snapshot.error}',
//                     style: TextStyle(color: Colors.white)));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(
//                 child: Text('No images found',
//                     style: TextStyle(color: Colors.white)));
//           } else {
//             return ListView.builder(
//               padding: const EdgeInsets.all(8.0),
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 final image = snapshot.data![index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 4.0),
//                   child: Image.network(
//                     image['url']!,
//                     fit: BoxFit.cover,
//                     loadingBuilder: (BuildContext context, Widget child,
//                         ImageChunkEvent? loadingProgress) {
//                       if (loadingProgress == null) return child;
//                       return Center(
//                         child: CircularProgressIndicator(
//                           value: loadingProgress.expectedTotalBytes != null
//                               ? loadingProgress.cumulativeBytesLoaded /
//                                   (loadingProgress.expectedTotalBytes ?? 1)
//                               : null,
//                         ),
//                       );
//                     },
//                     errorBuilder: (context, error, stackTrace) {
//                       return Center(
//                           child: Icon(Icons.error, color: Colors.red));
//                     },
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
