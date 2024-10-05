// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/levelonesconversationpart2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_zero.dart';

class Conversation {
  List<String> astro;
  String leo;
  Conversation({
    required this.astro,
    required this.leo,
  });
}

List<Conversation> conversations = [
  Conversation(astro: [
    "Hey, have you heard about the James Webb Space Telescope?",
    "Exactly! It’s the most powerful space telescope ever built. It was launchedin December 2021."
  ], leo: "Yeah, a little bit. Isn’t it the new telescope NASA launched recently?."),
  Conversation(astro: [
    "Also it is going to help us  to learn so much about the universe.",
    "Well, for one, it’s much bigger! The JWST has this huge primary mirror made of 18 gold-coated  segments."
  ], leo: "So, what’s special about it? How it’s different from the Hubble?"),
  Conversation(astro: [
    "Moreover, it is 6.5 meters wide- more than twice the size of Hubble’s mirror.",
    "Exactly! The bigger the mirror, the more light it can collect, which means it can see much farther into space. JWST can even look at galaxies that formed just a few hundred million years after the Big Bang"
  ], leo: "Wow, that must make it super powerful. What does the bigger mirror do?"),
Conversation(astro: [
    "JWST can even look at galaxies that formed just a few hundred million years after the Big Bang",
    "Nope, it’s a reflective  telescope, meaning it uses mirrors to focus light. Hubble was also the same."
  ], leo: "That’s insane. But how does it work- does it use lenses or something?"),
  Conversation(astro: [
    "Also, i want to mention, the sunshield protects it from the sun’s heat and light,  keeping it super cold around -223 degree celsius.",
    "Pretty much. Infrared light lets JWST see through dust clusters in space, where stars and planets are born Regular telescope can’t do that because visible light can’t get through the  dust."
  ], leo: "I also heard that it can detect heat signals in infrared spectrum. Is it true?"),




];

class LevelOneStartingConversation extends StatefulWidget {
  const LevelOneStartingConversation({super.key});

  @override
  State<LevelOneStartingConversation> createState() =>
      _LevelOneStartingConversationState();
}

class _LevelOneStartingConversationState extends State<LevelOneStartingConversation> {


  int _currentIndex = 0;

  void _updateText() {
    if (_currentIndex + 1 == conversations.length) {
      Get.to(const Levelonesconversationpart2());
    }
    setState(() {
      _currentIndex = (_currentIndex + 1) % conversations.length;
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
         

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/gamingsection/scopeitout/astroavater2.png'), // Ensure you have this image in your assets folder
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              conversations[_currentIndex].astro[0],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(conversations[_currentIndex].leo,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/gamingsection/scopeitout/leo.png'), // Ensure you have this image in your assets folder
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/gamingsection/scopeitout/astroavater2.png'), // Ensure you have this image in your assets folder
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              conversations[_currentIndex].astro[1],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )

            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 10),
            //     child: Container(
            //       width: MediaQuery.of(context).size.width * 0.4,
            //       height: MediaQuery.of(context).size.height * 0.5,
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage(
            //               'assets/images/gamingsection/scopeitout/leo.png'), // Ensure you have this image in your assets folder
            //           fit: BoxFit.fitWidth,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
