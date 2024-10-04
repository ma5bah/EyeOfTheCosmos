import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/start.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/landing_scope_it_out.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/landing3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameItem {
  String title;
  String imageUrl;
  VoidCallback onTap;

  GameItem({required this.title, required this.imageUrl, required this.onTap});
}

List<GameItem> gameItems = [
  // GameItem(
  //     title: "Create Your Telescope",
  //     imageUrl: "assets/images/gamingsection/3dvisualgame.png",
  //     onTap: () {
  //       Get.to(
  //           WebviewScreen(link: "https://beta.vectorclasses.net/first_game"));
  //     }),
  // GameItem(
  //     title: "Matching Time",
  //     imageUrl: "assets/images/gamingsection/3dvisualgame.png",
  //     onTap: () {
  //       Get.to(
  //           WebviewScreen(link: "https://beta.vectorclasses.net/second_game"));
  //     }),
  // GameItem(
  //     title: "3D size Comparison",
  //     imageUrl: "assets/images/gamingsection/3dvisualgame.png",
  //     onTap: () {
  //       Get.to(WebviewScreen(link: nasa_jwst_compare));
  //     }),
  GameItem(
    title: 'Telescope Eyes\n(Kids)',
    imageUrl: 'assets/images/gamingsection/scopeitout.png',
    onTap: () {
      Get.to(ScopeItOutLanding());
    },
  ),
  GameItem(
    title: 'Motion Architect\n(Teens)',
    imageUrl: 'assets/images/gamingsection/buildyourtelescope.png',
    onTap: () {
      Get.to(StartGamePage()); // Navigate to the Start Game page
    },
  ),
];
