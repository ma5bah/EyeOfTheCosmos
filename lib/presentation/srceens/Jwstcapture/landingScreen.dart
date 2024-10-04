import 'package:eyesofcosmos/data/model/audio_manager_model.dart';
import 'package:eyesofcosmos/data/model/jwst_capture_model.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/presentation/widgets/Feature_card.dart';
import 'package:eyesofcosmos/presentation/widgets/drawer_widget.dart';
import 'package:eyesofcosmos/presentation/widgets/home_screen_trends_card.dart';
import 'package:flutter/material.dart';

class JWSTCaptureLanding extends StatefulWidget {
  const JWSTCaptureLanding({super.key});

  @override
  State<JWSTCaptureLanding> createState() => _JWSTCaptureLandingState();
}

class _JWSTCaptureLandingState extends State<JWSTCaptureLanding> {
  @override
  void initState() {
    super.initState();
    AudioManager().playMusic('music/solar_sections.mp3');
  }

  @override
  void dispose() {
    AudioManager().stopMusic();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage(ImageAssets.onBoardingBackground3Jpg),
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
                  'JWST Capture',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'PoetsenOne',
                  ),
                ),
              ),

              // const Spacer(),
              FeaturedCard(
                text:
                    'Step into the cosmos and explore galaxies, planets, and stars like never before. Immerse yourself in the universe, where space unfolds before your eyes.',
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.46,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        // Enable horizontal scrolling
                        itemCount: captureItems.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: captureItems[index].onTap,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: HomeScreenTrendsCard(
                                    title: captureItems[index].title,
                                    imageUrl: captureItems[index].imageUrl)),
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
