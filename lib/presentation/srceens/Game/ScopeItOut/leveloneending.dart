import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_two.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LevelOneEnding extends StatefulWidget {
  const LevelOneEnding({super.key});

  @override
  State<LevelOneEnding> createState() => _LevelOneEndingState();
}

class _LevelOneEndingState extends State<LevelOneEnding> {
  final List<String> _texts = [
    'Great! You have learned very fast.\n Now we will learn about the\n different parts of JWST',
   
  ];

  int _currentIndex = 0;

  void _updateText() {
    if (_currentIndex + 1 == _texts.length) {
      Get.to(const LevelTwo());
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/scopeitoutgaminglanding.jpg'), // Ensure you have this image in your assets folder
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  alignment: Alignment.center, // Adjust the alignment as needed
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
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
                  decoration: const BoxDecoration(
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
