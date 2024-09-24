import 'dart:ffi';

import 'package:eyesofcosmos/presentation/widgets/scopeitoutgamelevel1card.dart';
import 'package:flutter/material.dart';

class LevelOne extends StatefulWidget {
  const LevelOne({super.key});

  @override
  State<LevelOne> createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
  int slidecontroller = 1;
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
                    'Level One',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
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
                          style: TextStyle(color: Colors.white, fontSize: 22),
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
                                TextStyle(color: Colors.white, fontSize: 22))),
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
            
            
            
            
            
            Text(
              '$slidecontroller',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
