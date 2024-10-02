// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slideshow extends StatefulWidget {
  final List Images;
  final String CaptureName;
  const Slideshow({
    Key? key,
    required this.Images,
    required this.CaptureName,
  }) : super(key: key);

  @override
  State<Slideshow> createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Slide Show", style: TextStyle(color: Colors.white,fontFamily: "Righteous"),),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Center(
            child: HomeSlider(sliderData: widget.Images, CaptureName: widget.CaptureName),
          ),
        ],
      ),
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
              height: 350.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
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
