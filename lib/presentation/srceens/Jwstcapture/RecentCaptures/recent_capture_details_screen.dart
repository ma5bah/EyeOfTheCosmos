// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/RecentCaptures/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:eyesofcosmos/data/model/Recent_Capture_model.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/RecentCaptures/recent_capture_landing.dart';

class RecentCaptureDetailsScreen extends StatefulWidget {
  final RecentCaptureModel model;
  const RecentCaptureDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  State<RecentCaptureDetailsScreen> createState() =>
      _RecentCaptureDetailsScreenState();
}

class _RecentCaptureDetailsScreenState
    extends State<RecentCaptureDetailsScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/jwstcapture/Recent Captures/${widget.model.captureName}/head.png'), // Ensure you have this image in your assets folder
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
                        Get.offAll(RecentCaptureLanding());
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  Text(widget.model.captureName ?? " ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Righteous")),
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  HomeSlider(
                    sliderData: widget.model.slidingImage ?? [],
                    CaptureName: widget.model.captureName ?? "",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Get.to(Slideshow(CaptureName:widget.model.captureName??"" ,Images:widget.model.slidingImage ?? [],));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      child: Text(
                        "Slide show",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 1,
                      child: ListView.builder(
                        itemCount: widget.model.keyword?.length ?? 0,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (contex, index) {
                          return Keyword(
                              text: widget.model.keyword?[index] ?? "");
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Text(
                              style: TextStyle(color: Colors.white),
                              "This image of Arp 107, shown by Webb’s MIRI (Mid-Infrared Instrument), reveals the supermassive black hole that lies in the center of the large spiral galaxy to the right. This black hole, which pulls much of the dust into lanes, also display’s Webb’s characteristic diffraction spikes, caused by the light that it emits interacting with the structure of the telescope itself. Perhaps the defining feature of the region, which MIRI reveals, are the millions of young stars that are forming, highlighted in blue. These stars are surrounded by dusty silicates and soot-like molecules known as polycyclic aromatic hydrocarbons. The small elliptical galaxy to the left, which has already gone through much of its star formation, is composed of many of these organic molecules."),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Fast Facts",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Righteous"),
                            ),
                          ),
                          Column(
                            children: [
                              FastFacts(
                                itemNumber: "1",
                                heading: "Object Name",
                                value:
                                    widget.model.fastFacts![0].objectName ?? "",
                              ),
                              FastFacts(
                                itemNumber: "2",
                                heading: "Description",
                                value: widget.model.fastFacts![0].description ??
                                    "",
                              ),
                              FastFacts(
                                itemNumber: "3",
                                heading: "R.A Position",
                                value:
                                    widget.model.fastFacts![1].rAPosition ?? "",
                              ),
                              FastFacts(
                                itemNumber: "4",
                                heading: "Dec. Positon",
                                value: widget.model.fastFacts![2].decPosition ??
                                    "",
                              ),
                              FastFacts(
                                itemNumber: "5",
                                heading: "Constellation",
                                value:
                                    widget.model.fastFacts![3].constellation ??
                                        "",
                              ),
                              FastFacts(
                                itemNumber: "6",
                                heading: "Distance",
                                value:
                                    widget.model.fastFacts![4].distance ?? "",
                              ),
                              FastFacts(
                                itemNumber: "7",
                                heading: "Dimensions",
                                value:
                                    widget.model.fastFacts![5].dimensions ?? "",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FastFacts extends StatelessWidget {
  final String itemNumber;
  final String heading;
  final String value;

  const FastFacts({
    Key? key,
    required this.itemNumber,
    required this.heading,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${itemNumber} . ",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontFamily: "Righteous"),
        ),
        Text("${heading} : ",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: "Righteous")),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: "Righteous"),
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class Keyword extends StatelessWidget {
  final String text;
  const Keyword({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(text,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Righteous")))),
    );
  }
}

class HomeSlider extends StatefulWidget {
  final List sliderData;
  final String CaptureName;
  const HomeSlider({
    Key? key,
    required this.sliderData,
    required this.CaptureName,
  }) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  ValueNotifier<int> _selectedSlider = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 1),
              onPageChanged: (int page, _) {
                _selectedSlider.value = page;
              }),
          items: widget.sliderData.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/jwstcapture/Recent Captures/${widget.CaptureName}/head.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
