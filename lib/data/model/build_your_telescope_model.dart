import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page1.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_zero.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildYourTelescope {
  String title;

  VoidCallback onTap;

  BuildYourTelescope({required this.title, required this.onTap});
}

List<BuildYourTelescope> buildYourTelescopesLevel = [
  BuildYourTelescope(
    title: 'Start Game',
    onTap: () {
      Get.to(BuildTelescopeLevel1Page1());
    },
  ),
  // BuildYourTelescope(
  //   title: 'Level Two',

  //   onTap: () {
  //     // Get.to(LevelTwo());
  //   },
  // ),
  // BuildYourTelescope(
  //   title: 'Level Three',

  //   onTap: () {},
  // ),
];
