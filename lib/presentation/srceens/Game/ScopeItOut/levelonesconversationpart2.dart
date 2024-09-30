import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/doubtsolvingpage.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_two.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Levelonesconversationpart2 extends StatefulWidget {
  const Levelonesconversationpart2({super.key});

  @override
  State<Levelonesconversationpart2> createState() => _Levelonesconversationpart2State();
}

class _Levelonesconversationpart2State extends State<Levelonesconversationpart2> {
  final List<String> _texts = [
    'Hey! Did you feel dizzy from our conversation.\nDon’t feel frustrated. \nI am here for your help.',
    'I know that you don’t understand \n some terms...',
    'That’s why following lesson will\n be for your learning'
   
  ];

  int _currentIndex = 0;

  void _updateText() {
    if (_currentIndex + 1 == _texts.length) {
      Get.to(Doubtsolvingpage());
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
