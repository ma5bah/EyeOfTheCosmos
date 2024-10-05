// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:eyesofcosmos/application/controllers/main_bottom_nav_controller.dart';
import 'package:eyesofcosmos/data/model/planet_details_model.dart';
import 'package:eyesofcosmos/presentation/srceens/SolarSystem/planet_details_page.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/presentation/widgets/bottom_navaigation_bar.dart';

class SolarSystemLanding extends StatefulWidget {
  const SolarSystemLanding({super.key});

  @override
  State<SolarSystemLanding> createState() => _SolarSystemLandingState();
}

class _SolarSystemLandingState extends State<SolarSystemLanding> {
  String jsonData = planetDetailsJson;
  List<PlanetDetailsModel> planets = [];
  void loadData() async {
    List<dynamic> jsonList = jsonDecode(jsonData);
    print(jsonList);
    planets =
        jsonList.map((json) => PlanetDetailsModel.fromJson(json)).toList();
    print(planets[7].gravity);
  }

  @override
  void initState() {
    print("rakib");
    // TODO: implement initState
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (controller) {
      void handleOnTab(int index) {
        controller.changeScreen(index);
        Get.to(const MainBottomNavScreen());
      }

      return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/solarsystemlandingbg.png'), // Ensure you have this image in your assets folder
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).padding.top + 20,
                    left: MediaQuery.of(context).padding.left + 30,
                    child: const Row(
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        Text("Solar System",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Righteous")),
                      ],
                    )),
                Positioned(
                  top: MediaQuery.of(context).padding.top +
                      90, // Adjust top padding
                  left: 20, // Left padding
                  right: 20, // Right padding
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(
                        child: Container(
                          decoration: const BoxDecoration(
                              //    border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(20),
                              ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10), // Control the tab height here
                          child: const Text('Planets',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Righteous")),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: const BoxDecoration(
                              //    border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(20),
                              ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal:
                                  10), // Consistent padding for both tabs
                          child: const Text(
                            'Galaxy',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Righteous"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top +
                      160, // Adjust to position TabBarView below the TabBar
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: TabBarView(
                    children: [
                      PlanetTab(
                        plantdetailslist: planets,
                      ),
                      GalaxyTab(),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavaigationBar(
              currentSelectedIndex: controller.currentSelectedIndex,
              onTap: handleOnTab,
            )),
      );
    });
  }
}

class PlanetTab extends StatelessWidget {
  final List<PlanetDetailsModel> plantdetailslist;
  const PlanetTab({
    super.key,
    required this.plantdetailslist,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Place your planets widgets here

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[0],
                        color: const Color(0xFF535450),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Mercury",
                      img: "assets/images/solarsystem/mercury/mercury.png",
                    )),
                InkWell(
                    onTap: () {
                      print(plantdetailslist);
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[0],
                        color: const Color(0xFF766547),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Venus",
                      img: "assets/images/solarsystem/venus/venus.png",
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.to(PlanetDetailsPage(
                planetDetails: plantdetailslist[2],
                color: const Color(0xFF333F76),
              ));
            },
            child: const NewCard(
                heading1: "Our beloved",
                heading2: "Earth",
                img: "assets/images/solarsystem/earth/earthcover.png"),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[3],
                        color: const Color(0xFFF69164),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Mars",
                      img: "assets/images/solarsystem/mars/mars.png",
                    )),
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[5],
                        color: const Color(0xFFB2B08A),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Saturn",
                      img: "assets/images/solarsystem/saturn/saturn.png",
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),

          InkWell(
            onTap: () {
              Get.to(PlanetDetailsPage(
                planetDetails: plantdetailslist[5],
                color: const Color(0xFFB2B08A),
              ));
            },
            child: const NewCard(
                heading1: "On Saturn",
                heading2: "Cassini",
                img: "assets/images/solarsystem/saturn/saturncover.png"),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[4],
                        color: const Color(0xFF817769),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Jupyter",
                      img: "assets/images/solarsystem/jupyter/jupyter.png",
                    )),
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[6],
                        color: const Color(0xFFCAF1F1),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Uranus",
                      img: "assets/images/solarsystem/urenus/urenus.png",
                    )),
              ],
            ),
          ),

          const SizedBox(height: 20),

          InkWell(
            onTap: () {
              Get.to(PlanetDetailsPage(
                planetDetails: plantdetailslist[6],
                color: const Color(0xFFCAF1F1),
              ));
            },
            child: const NewCard(
                heading1: "Hidden Truth of",
                heading2: "Uranus",
                img: "assets/images/solarsystem/urenus/urenuscover.png"),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[7],
                        color: const Color(0xFF4371FC),
                      ));
                    },
                    child: const PlanetCard(
                      title: "Neptune",
                      img: "assets/images/solarsystem/neptune/neptune.png",
                    )),
                InkWell(
                    onTap: () {
                      Get.to(PlanetDetailsPage(
                        planetDetails: plantdetailslist[8],
                        color: const Color(0xFF8D7C6A),
                      ));
                    },
                    child: const PlanetCard(
                      title: "pluto",
                      img: "assets/images/solarsystem/pluto/pluto.png",
                    )),
              ],
            ),
          ),

          // PlanetCard(),

          // Add more widgets as necessary
        ],
      ),
    );
  }
}

class GalaxyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/galaxyinsolar.png'), // Ensure you have this image in your assets folder
                fit: BoxFit.contain,
              ),
            ),

            
          ),
        ),
      ],
    );
  }
}

class PlanetCard extends StatelessWidget {
  final String title;
  final String img;
  const PlanetCard({
    super.key,
    required this.title,
    required this.img,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 138,
        height: 173,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  width: 138,
                  height: 123,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                )),
            Positioned(
              top: 0,
              child: Container(
                width: 99,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        img), // Ensure you have an image asset named mercury.jpg in your assets folder
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Righteous"),
              ),
            )
          ],
        ));
  }
}

class NewCard extends StatelessWidget {
  final String heading1;
  final String heading2;
  final String img;
  const NewCard({
    super.key,
    required this.heading1,
    required this.heading2,
    required this.img,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 188,
          width: 363,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  img), // Ensure you have an image asset named mercury.jpg in your assets folder
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading1,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Righteous"),
              ),
              Text(
                heading2,
                style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Righteous"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
