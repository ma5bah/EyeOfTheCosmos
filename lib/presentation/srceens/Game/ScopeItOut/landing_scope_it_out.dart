import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_zero.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ScopeItOutLanding extends StatefulWidget {
  const ScopeItOutLanding({super.key});

  @override
  State<ScopeItOutLanding> createState() => _ScopeItOutLandingState();
}

class _ScopeItOutLandingState extends State<ScopeItOutLanding> {
  final List<String> _texts = [
    'Hey there, I am Astro',
    'Welcome to the James\nWebb Space Telescope Adventure! ',
    "Today, you'll' learn \nhow the JWST helps us to explore universe",
    'Get ready to start our mission?',
    'Do you know, what is Reflective Telescope?',
    "If you don't know, \nlet's dive into following lesson.",
  ];

  int _currentIndex = 0;

  void _updateText() {
    if (_currentIndex + 1 == _texts.length) {
      Get.to(LevelZero());
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
                          'assets/images/gamingsection/scopeitout/astroavater.png'), // Ensure you have this image in your assets folder
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
