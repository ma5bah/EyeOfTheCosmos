// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eyesofcosmos/presentation/srceens/SolarSystem/solar_syestem_landing.dart';
import 'package:eyesofcosmos/presentation/widgets/play_planet_video.dart';
import 'package:eyesofcosmos/presentation/widgets/play_video.dart';
import 'package:flutter/material.dart';

import 'package:eyesofcosmos/data/model/planet_details_model.dart';
import 'package:get/get.dart';

class PlanetDetailsPage extends StatefulWidget {
  final Color color;
  final dynamic planetDetails;
  const PlanetDetailsPage({
    super.key,
    required this.color,
    required this.planetDetails,
  });

  @override
  State<PlanetDetailsPage> createState() => _PlanetDetailsPageState();
}

class _PlanetDetailsPageState extends State<PlanetDetailsPage> {
  @override
  String extractVideoID(String url) {
    RegExp regExp = RegExp(r"youtu\.be/([^\?\&]*)");
    Match? match = regExp.firstMatch(url);
    if (match != null && match.groupCount >= 1) {
      return match.group(1) ?? "0KBjnNuhRHs";
    }
    return "0KBjnNuhRHs";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.elliptical(170, 100),
                        bottomRight: Radius.elliptical(170, 100))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                            onTap: () {
                              Get.offAll(const SolarSystemLanding());
                            },
                            child: const Icon(Icons.arrow_back_ios,
                                color: Colors.black)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            widget.planetDetails.planetName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Righteous",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      // Icon(Icons.arrow_forward_ios, color: Colors.black)
                    ],
                  ),
                  // Text("Sun's Colsest Companion",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //         fontFamily: "Righteous")),
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(children: [
                    Container(
                      width: 286,
                      height: 282,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/solarsystem/${widget.planetDetails.planetName}/${widget.planetDetails.headerimage}"), // Ensure you have an image asset named mercury.jpg in your assets folder
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).padding.top + 20,
                        left: MediaQuery.of(context).padding.left + 80,
                        child: InkWell(
                          onTap: () {
                            String videoID =
                                extractVideoID(widget.planetDetails.videoUrl);
                            print(videoID);
                            Get.to(VideoExample(
                              videoId: videoID,
                            ));
                          },
                          child: const Icon(
                            Icons.play_arrow_outlined,
                            size: 134,
                          ),
                        )),
                  ]),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // Enable horizontal scrolling
                itemCount: widget.planetDetails.detailsimages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Container(
                      width: 131,
                      height: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/solarsystem/${widget.planetDetails.planetName}/${widget.planetDetails.detailsimages[index]}"), // Replace with your asset image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(children: [
                  planetinformation("Position from the Sun : ",
                      widget.planetDetails.positionfromthesun, widget.color),
                  planetinformation(
                      "Radius : ", widget.planetDetails.radius, widget.color),
                  planetinformation("Distance from the Sun : ",
                      widget.planetDetails.distancefromsun, widget.color),
                  planetinformation("Number of moons : ",
                      widget.planetDetails.numberofmoons, widget.color),
                  planetinformation(
                      "Gravity : ", widget.planetDetails.gravity, widget.color),
                  planetinformation("length of the Day : ",
                      widget.planetDetails.lengthofday, widget.color),
                  planetinformation("Temprature : ",
                      widget.planetDetails.temperature, widget.color),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding planetinformation(String title, String description, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Expanded(
            child: Text(description,
                style: TextStyle(
                  fontSize: 15,
                  color: color,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: false),
          ),
        ],
      ),
    );
  }
}
