import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/levelZerofinish.dart';
import 'package:eyesofcosmos/presentation/widgets/play_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LevelZero extends StatefulWidget {
  const LevelZero({super.key});

  @override
  State<LevelZero> createState() => _LevelZeroState();
}

class _LevelZeroState extends State<LevelZero> {
  bool controller = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black12,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white), // Set AppBar icons to white
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.09,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Level Zero',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'PoetsenOne',
                  ),
                ),
                OutlinedButton(
                    onPressed: () {
                      Get.to(const LevelZeroFinish());
                    },
                    child: const Text(
                      "Next Section",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  controller = true;
                  setState(() {});
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: controller ? 170 : 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/gamingsection/replectiveTelescope.png'), // Replace with your asset image
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Stack(
                    children: <Widget>[
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          'Relflective \nTelescope ',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  controller = false;
                  setState(() {});
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: controller ? 150 : 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/gamingsection/refractivetelescope.png'), // Replace with your asset image
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Stack(
                    children: <Widget>[
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          'Refractive \nTelescope ',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  controller
                      ? Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Reflective Telescope:",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Center(
                                child: Text(
                                  "1.Reflecting telescopes date back to 1616.\n2.Newton's 1668 design was the first practical one.\n3.He introduced an angled secondary mirror for easier image viewing.\n4.This design is called a Newtonian Reflector.\n5.The Cassegrain Reflector uses a  different mirror arrangement, affecting light reflection.",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            const Text(
                              "Watch Video:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(const VideoExample(
                                    videoId: 'x8wrp34-IXA',
                                  ));
                                },
                                child: SizedBox(
                                    height: 250,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Image.network(
                                        YoutubePlayer.getThumbnail(
                                            videoId: "x8wrp34-IXA")))),
                            const Text(
                              "A refracting telescope uses a conv'x lens t'bend and focus light, which is then'magnifie'by a concave lens in the eyep'ece. Man'modern telescopes include a 'diagonal' mirror to angle the light for easier viewing",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      : Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Refractive Telescope:",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Center(
                                child: Text(
                                  "1.The first refracting telescopes  appeared in the Netherlands around 1608.\n2.Galileo improved and popularized the design in 1609\n3.He is often credited for the telescope's advancement.\n4.Galileo was the first to use a telescope for space study.\n5.He discovered Jupiter's four largest moons.",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            const Text(
                              "Watch Video:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(const VideoExample(
                                    videoId: 'uSC-71vXgh0',
                                  ));
                                },
                                child: SizedBox(
                                    height: 250,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Image.network(
                                        YoutubePlayer.getThumbnail(
                                            videoId: "uSC-71vXgh0")))),
                            const Text(
                              "A refracting telescope uses a conv'x lens t'bend and focus light, which is then'magnifie'by a concave lens in the eyep'ece. Man'modern telescopes include a 'diagonal' mirror to angle the light for easier viewing",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
