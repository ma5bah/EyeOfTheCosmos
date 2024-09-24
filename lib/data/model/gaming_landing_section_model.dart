import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/landing.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/landing_scope_it_out.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    onTap: () {},
  ),
  GameItem(
    title: 'Scope it \nout 2',
    imageUrl: 'assets/images/gamingsection/scopeitout.png',
    onTap: () {
      Get.to(ScopeItOutLanding());
    },
  ),
  GameItem(
    title: 'Build Your \nTelescope',
    imageUrl: 'assets/images/gamingsection/buildyourtelescope.png',
    onTap: () {
      Get.to(BuildYourTelescopeLanding());
    },
  ),
];
