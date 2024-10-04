import 'dart:convert';

import 'package:eyesofcosmos/data/model/Recent_Capture_model.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/RecentCaptures/recent_capture_details_screen.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

class RecentCaptureLanding extends StatefulWidget {
  const RecentCaptureLanding({super.key});

  @override
  State<RecentCaptureLanding> createState() => _RecentCaptureLandingState();
}

class _RecentCaptureLandingState extends State<RecentCaptureLanding> {
  String jsonData = recentCaptureJson;
  List<RecentCaptureModel> recentCaptureItem = [];
  void loadData() async {
    List<dynamic> jsonList = jsonDecode(jsonData);
    print(jsonList);
    recentCaptureItem =
        jsonList.map((json) => RecentCaptureModel.fromJson(json)).toList();
    print(recentCaptureItem[3].captureName);
  }

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/jwstcapture/Recent Captures/recentcapturelandingbg.png'), // Ensure you have this image in your assets folder
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top + 20,
              left: MediaQuery.of(context).padding.left + 30,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.offAll(MainBottomNavScreen());
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  Text("Recently Captured",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Righteous")),
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            left: MediaQuery.of(context).padding.left + 30,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.8,
              child: MasonryGridView.count(
                  itemCount: recentCaptureItem.length,
                  crossAxisCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(RecentCaptureDetailsScreen(
                          model: recentCaptureItem[index],
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 10),
                        child: Container(
                          width: 167,
                          height: 154,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/jwstcapture/Recent Captures/${recentCaptureItem[index].captureName}/head.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 15,
                                bottom: 20,
                                child: Text(
                                  recentCaptureItem[index].captureName ?? " ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanetCard extends StatelessWidget {
  final String title;
  final String img;
  const PlanetCard({
    Key? key,
    required this.title,
    required this.img,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyle(
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
