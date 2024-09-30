import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_two.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_zero.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScopeItOurGameLevel {
  String title;
 
  VoidCallback onTap;

  ScopeItOurGameLevel({required this.title, required this.onTap});
}

List<ScopeItOurGameLevel> scopeItOurGameLevels = [
  ScopeItOurGameLevel(
    title: 'Level Zero',
    
    onTap: () {
      Get.to(LevelZero());
    },
  ),
  ScopeItOurGameLevel(
    title: 'Level One',
   
    onTap: () {
      // Get.to(Level());
    },
  ),
  ScopeItOurGameLevel(
    title: 'Level Two',

    onTap: () {},
  ),
    ScopeItOurGameLevel(
    title: 'Level Three',

    onTap: () {},
  ),
    ScopeItOurGameLevel(
    title: 'Level Four',

    onTap: () {},
  )
];
