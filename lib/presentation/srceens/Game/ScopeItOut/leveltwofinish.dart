import 'package:eyesofcosmos/presentation/srceens/Game/landing_game.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelTwoEnding extends StatefulWidget {
  const LevelTwoEnding({super.key});

  @override
  State<LevelTwoEnding> createState() => _LevelTwoEndingState();
}

class _LevelTwoEndingState extends State<LevelTwoEnding> {
  final List<String> _texts = [
    'Great! You have completed all the lesson \n Tap to back to the game screen',
  ];

  int _currentIndex = 0;

  void _updateText() {
    if (_currentIndex + 1 == _texts.length) {
      Get.to(MainBottomNavScreen());
    }
    setState(() {
      _currentIndex = (_currentIndex + 1) % _texts.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _updateText,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/scopeitoutgaminglanding.jpg'), // Ensure you have this image in your assets folder
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  alignment: Alignment.center, // Adjust the alignment as needed
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/gamingsection/scopeitout/textbox.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Text(
                        _texts[_currentIndex],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/gamingsection/scopeitout/astroavater2.png'), // Ensure you have this image in your assets folder
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
