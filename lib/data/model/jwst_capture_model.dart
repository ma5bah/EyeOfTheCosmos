import 'package:eyesofcosmos/application/controllers/main_bottom_nav_controller.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/Exoplanets/exoplanet.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/Galaxy/galaxy.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/RecentCaptures/recent_capture_landing.dart';
import 'package:eyesofcosmos/presentation/srceens/SolarSystem/solar_syestem_landing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final MainBottomNavController controller = Get.find();

class CaptureItem {
  String title;
  String imageUrl;
  VoidCallback onTap;

  CaptureItem(
      {required this.title, required this.imageUrl, required this.onTap});
}

List<CaptureItem> captureItems = [
  CaptureItem(
    title: 'Explore\nRecent Capture',
    imageUrl: 'assets/images/jwstcapture/RecentCaptureLandingbg.png',
    onTap: () {
      Get.to(RecentCaptureLanding());
    },
  ),
  CaptureItem(
    title: 'Explore\nGalaxy',
    imageUrl: 'assets/images/jwstcapture/galaxybg.png',
    onTap: () {},
  ),
  CaptureItem(
    title: 'Explore\nExoplanets',
    imageUrl: 'assets/images/jwstcapture/ExoPlanetsBg.png',
    onTap: () {
      Get.to(ExoplanetPage()); // Navigate to the new Exoplanets page
    },
  ),

  // CaptureItem(
  //   title: 'Exoplanets',
  //   imageUrl: 'assets/images/jwstcapture/ExoPlanetsBg.png',
  //   onTap: () {
  //     controller.changeScreen(1);
  //     Get.to(SolarSystemLanding());
  //   },
  // )
];
