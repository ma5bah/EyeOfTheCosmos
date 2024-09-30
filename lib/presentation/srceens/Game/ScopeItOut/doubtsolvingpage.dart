// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/leveloneending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_one_starting_conversation.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/level_zero.dart';

class Doubtsolvingpage extends StatefulWidget {
  const Doubtsolvingpage({super.key});

  @override
  State<Doubtsolvingpage> createState() => _DoubtsolvingpageState();
}

class _DoubtsolvingpageState extends State<Doubtsolvingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    OutlinedButton(
                    onPressed: () {
                      Get.to((LevelOneEnding()));
                    },
                    child: Text(
                      "Next Section",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/gamingsection/scopeitout/astroavater2.png'), // Ensure you have this image in your assets folder
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            "I am your doubt solver,  Proteus You will find the solutions of your doubts in below :)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                child: SingleChildScrollView(
                  child: Column(children: [

                    DoubtCard(heading: "Big Bang", description: "The Big Bang is the leading theory that explains how the universe began.  According to the theory, the universe  started as a single point, which was  incredibly hot and dense, about 13.8  billion years ago. Read More..."),
                   DoubtCard(heading: "Infrared Spectrum", description: "The infrared spectrum refers to the  range of wavelengths in the infrared  region of the electromagnetic spectrum        typically from about 700 nanometers  to 1 millimeter (mm). This range is often  divided into near-infrared, mid-infrared  and far-infrared. Read More..."),

                   DoubtCard(heading: "Infrared Spectrum", description: "The infrared spectrum refers to the  range of wavelengths in the infrared  region of the electromagnetic spectrum        typically from about 700 nanometers  to 1 millimeter (mm). This range is often  divided into near-infrared, mid-infrared  and far-infrared. Read More...")
                  
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DoubtCard extends StatelessWidget {
  final String heading;
  final String description;
  const DoubtCard({
    Key? key,
    required this.heading,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                Text(
                                  heading,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  description,
                                  textAlign: TextAlign.start,
      
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      ),
                                      
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
    );
  }
}
