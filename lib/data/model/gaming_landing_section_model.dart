import 'package:eyesofcosmos/data/model/build_your_telescope_model.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/landing.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/landing_scope_it_out.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/start.dart'; // Import the target page

class GameItem {
  String title;
  String imageUrl;
  VoidCallback onTap;

  GameItem({required this.title, required this.imageUrl, required this.onTap});
}

List<GameItem> gameItems = [
  GameItem(
    title: '3D Visual \nGame',
    imageUrl: 'assets/images/gamingsection/3dvisualgame.png',
    onTap: () {
      // Define the action for 3D Visual Game if needed
    },
  ),
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
