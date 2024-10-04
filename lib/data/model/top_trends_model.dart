import 'package:eyesofcosmos/application/controllers/main_bottom_nav_controller.dart';
import 'package:eyesofcosmos/data/constants.dart';
import 'package:eyesofcosmos/data/model/gaming_landing_section_model.dart';
import 'package:eyesofcosmos/data/model/jwst_live.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/landing_game.dart';
import 'package:eyesofcosmos/presentation/srceens/IFrameView.dart';
import 'package:eyesofcosmos/presentation/srceens/News/jwstmission_news.dart';
import 'package:eyesofcosmos/presentation/srceens/SolarSystem/solar_syestem_landing.dart';
import 'package:eyesofcosmos/presentation/srceens/observatory/webobservatory.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';
import 'package:eyesofcosmos/presentation/srceens/jwst_live_tracker/JwstLive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final MainBottomNavController controller = Get.find();

class ExploreItem {
  String title;
  String imageUrl;
  VoidCallback onTap;

  ExploreItem(
      {required this.title, required this.imageUrl, required this.onTap});
}

List<ExploreItem> exploreItems = [
  ExploreItem(
    title: 'Explore Our\nUniverse Game',
    imageUrl: 'assets/images/toptrends/game.png',
    onTap: () {
      controller.changeScreen(3);
      Get.to(MainBottomNavScreen());
    },
  ),
  // ExploreItem(
  //   title: '3D Universe',
  //   imageUrl: 'assets/images/toptrends/image1.png',
  //   onTap: () {
  //     controller.changeScreen(2);
  //     Get.to(MainBottomNavScreen());
  //   },
  // ),
  ExploreItem(
    title: ' Explore\nMissions',
    imageUrl: 'assets/images/toptrends/image2.png',
    onTap: () {
      controller.changeScreen(4); //you
      Get.to(MainBottomNavScreen());
    },
  ),
  ExploreItem(
    title: 'Explore\nJWST Captures',
    imageUrl: 'assets/images/toptrends/image3.png',
    onTap: () {
      controller.changeScreen(1); //you
      Get.to(MainBottomNavScreen());
    },
  ),
  // ExploreItem(
  //   title: 'Own Telescope',
  //   imageUrl: 'assets/images/toptrends/image4.png',
  //   onTap: () {},
  // ),
  ExploreItem(
    title: 'Observatory\nJames Webb',
    imageUrl: 'assets/images/toptrends/image4.png',
    onTap: () {
      controller.changeScreen(1);
      Get.to(WebbObservatoryPage());
    },
  ),
  ExploreItem(
    title: 'Solar System\nIn JWST Eyes',
    imageUrl: 'assets/images/toptrends/image5.png',
    onTap: () {
      controller.changeScreen(1);
      Get.to(WebviewScreen(link: nasa_jwst_eyes));
    },
  ),
  ExploreItem(
    title: 'JWST\nLive Tracker',
    imageUrl: 'assets/images/toptrends/image5.png',
    onTap: () {
      controller.changeScreen(0);
      Get.to(JWSTLiveTrackerPage());
    },
  ),
  ExploreItem(
    title: 'Learn About\nOur Planet',
    imageUrl: 'assets/images/toptrends/image5.png',
    onTap: () {
      controller.changeScreen(1);
      Get.to(SolarSystemLanding());
    },
  ),
];

class JWSTLiveTracker {}
