// import 'package:eyesofcosmos/presentation/widgets/bottom_navaigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:eyesofcosmos/presentation/utils/image_assets.dart';

// class JWSTLiveTracker extends StatefulWidget {
//   @override
//   _JWSTLiveTrackerState createState() => _JWSTLiveTrackerState();
// }

// class _JWSTLiveTrackerState extends State<JWSTLiveTracker> {
//   int _currentSelectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/images/jwst_background.png'), // Replace with your background image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Content overlay
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Back button
//               Padding(
//                 padding: const EdgeInsets.only(left: 16.0, top: 40.0),
//                 child: IconButton(
//                   icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               // Title
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 20.0),
//                 child: Text(
//                   'JWST\nLive Tracker',
//                   style: TextStyle(
//                     fontSize: 28,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     height: 1.2,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ListView(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   children: [
//                     // Card 1: 3D Travel With JWST
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the 3D Travel page
//                       },
//                       child: Card(
//                         color: Colors.transparent,
//                         elevation: 4.0,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Container(
//                           height: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/3d_travel.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: Align(
//                               alignment: Alignment.bottomLeft,
//                               child: Text(
//                                 '3D Travel\nWith JWST',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     // Card 2: Watch JWST Live
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the Watch Live page
//                       },
//                       child: Card(
//                         color: Colors.transparent,
//                         elevation: 4.0,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Container(
//                           height: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/watch_live.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: Align(
//                               alignment: Alignment.bottomLeft,
//                               child: Text(
//                                 'Watch JWST\nLive',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
