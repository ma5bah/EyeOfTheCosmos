import 'package:eyesofcosmos/presentation/srceens/News/news_details_screen.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/presentation/widgets/NewsCard.dart';
import 'package:eyesofcosmos/presentation/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JwstmissionNews extends StatefulWidget {
  const JwstmissionNews({super.key});

  @override
  State<JwstmissionNews> createState() => _JwstmissionNewsState();
}

class _JwstmissionNewsState extends State<JwstmissionNews> {
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
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'News Daily',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    // Enable horizontal scrolling
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: ()=>{
                          Get.to(NewsDetailsScreen())
                        },
                        child: Newscard());
                    },
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
