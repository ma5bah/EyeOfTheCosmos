import 'package:eyesofcosmos/data/model/audio_manager_model.dart';
import 'package:eyesofcosmos/data/model/gaming_landing_section_model.dart';

import 'package:eyesofcosmos/presentation/widgets/drawer_widget.dart';
import 'package:eyesofcosmos/presentation/widgets/game_screen_landing_card.dart';
import 'package:flutter/material.dart';

class GamingSectionLanding extends StatefulWidget {
  const GamingSectionLanding({super.key});

  @override
  State<GamingSectionLanding> createState() => _GamingSectionLandingState();
}

class _GamingSectionLandingState extends State<GamingSectionLanding> {
  @override
  Widget build(BuildContext context) {
    AudioManager().playMusic('music/game_screen.mp3');
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black12,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white), // Set AppBar icons to white
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gamingsectionlanding.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.09,
              // ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  'Explore Your\nFavorite Game',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'PoetsenOne',
                  ),
                ),
              ),

              // const Spacer(),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        // Enable horizontal scrolling
                        itemCount: gameItems.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: gameItems[index].onTap,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: GameScreenLandingCard(
                                    title: gameItems[index].title,
                                    imageUrl: gameItems[index].imageUrl)),
                          );
                        },
                      ))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
