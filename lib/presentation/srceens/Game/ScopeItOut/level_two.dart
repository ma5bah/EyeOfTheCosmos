

import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/leveltwofinish.dart';
import 'package:eyesofcosmos/presentation/widgets/scopeitoutgamelevel1card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelTwo extends StatefulWidget {
  const LevelTwo({super.key});

  @override
  State<LevelTwo> createState() => _LevelTwoState();
}

class _LevelTwoState extends State<LevelTwo> {
  int slidecontroller = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black12,
        elevation: 0,
        actions: [
           OutlinedButton(
                    onPressed: () {
                      Get.to(LevelTwoEnding());
                    },
                    child: Text(
                      "Next Section",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
        ],
        
        iconTheme: const IconThemeData(
            color: Colors.white), // Set AppBar icons to white
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.09,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    'Parts of Jwt',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'PoetsenOne',
                    ),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          if (slidecontroller > 1) {
                            slidecontroller = slidecontroller - 1;
                          }
                          setState(() {});
                        },
                        child: Text(
                          "<Prev",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          if (slidecontroller < 5) {
                            slidecontroller = slidecontroller + 1;
                          }
                          setState(() {});
                        },
                        child: Text("Next>",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18))),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            //  const Scopeitoutgamelevel1card(heading: "hi", description: "fsdfas", imageUrl: "fdsfs"),
            
            if(slidecontroller==1) Scopeitoutgamelevel1card(heading: "Observer of EyePiece",description: "sfd",imageUrl: "fsdf",),
            if(slidecontroller==2) Scopeitoutgamelevel1card(heading: "Tripod",description: "sfd",imageUrl: "fsdf",),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
