import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class Item {
  String title;
  // String imageUrl;
  int id;
  String description;
  // VoidCallback onTap;

  Item({required this.id, required this.title, required this.description
      // required this.imageUrl,
      });
}

List<Item> value = [
  Item(id: 0, title: "Flutter", description: "Black holes vary in size. Most massive galaxies"),
  Item(id: 1, title: "Rakib", description: "cape. This means we cannot seethem"),
];

class BuildTelescopeLevel1Page1 extends StatefulWidget {
  const BuildTelescopeLevel1Page1({super.key});

  @override
  State<BuildTelescopeLevel1Page1> createState() =>
      _BuildTelescopeLevel1Page1State();
}

class _BuildTelescopeLevel1Page1State extends State<BuildTelescopeLevel1Page1> {
  final Buildyourtelescopevaluecontroller appController = Get.find();
  int controller = 0;
  @override
  void initState() {
    // TODO: implement initState
    void initState() {
    // TODO: implement initState
    super.initState();
    appController.updateState('${controller}', 1);
  }
    super.initState();
  }

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
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'What would you like to study?\nYou may make ONE selection.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'PoetsenOne',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                child: MasonryGridView.count(
                    itemCount: 2,
                    crossAxisCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          controller = index;
                          appController.updateState('${controller}', 1);
                          setState(() {});
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 10),
                          child: Container(
                            width: 100,
                            height: controller == value[index].id ? 100 : 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/gamingsection/replectiveTelescope.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Text(
                                    '${value[index].title}',
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
                      );
                    }),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Obx(() => Text('Current State: ${appController.myState}')),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Science",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Get.to(BuildYourOwnLevel1Page2());
                  },
                  child: Text(
                    "Next Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(164, 255, 255, 255)),
              child: Text(value[controller].description),
            ),

            // Container(
            //   padding: EdgeInsets.all(20),
            //   width: MediaQuery.of(context).size.width * 1,
            //   height: MediaQuery.of(context).size.height * 0.5,
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         controller
            //             ? Column(
            //               // mainAxisAlignment: MainAxisAlignment.start,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Reflective Telescope:",
            //                     style: TextStyle(
            //                         fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.symmetric(
            //                          vertical: 10),
            //                     child: Center(
            //                       child: Text(
            //                         "1.Reflecting telescopes date back to 1616.\n2.Newton's 1668 design was the first practical one.\n3.He introduced an angled secondary mirror for easier image viewing.\n4.This design is called a Newtonian Reflector.\n5.The Cassegrain Reflector uses a  different mirror arrangement, affecting light reflection.",
            //                         style: TextStyle(
            //                             fontSize: 15, color: Colors.white),
            //                       ),
            //                     ),
            //                   ),
            //                    Text("Watch Video:",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight:FontWeight.bold),),
            //                   InkWell(
            //                       onTap: () {
            //                         Get.to(VideoExample(
            //                           videoId: 'x8wrp34-IXA',
            //                         ));
            //                       },
            //                       child: Container(
            //                           height: 250,
            //                           width: MediaQuery.of(context).size.width * 1,
            //                           child: Image.network(
            //                               YoutubePlayer.getThumbnail(
            //                                   videoId: "x8wrp34-IXA")))),
            //                                   Text("A refracting telescope uses a conv'x lens t'bend and focus light, which is then'magnifie'by a concave lens in the eyep'ece. Man'modern telescopes include a 'diagonal' mirror to angle the light for easier viewing",style: TextStyle(color: Colors.white),)

            //                 ],
            //               )
            //             : Column(
            //               // mainAxisAlignment: MainAxisAlignment.start,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Refractive Telescope:",
            //                     style: TextStyle(
            //                         fontSize: 24, color: Colors.white,fontWeight:FontWeight.bold),
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.symmetric(
            //                         vertical: 10),
            //                     child: Center(
            //                       child: Text(
            //                         "1.The first refracting telescopes  appeared in the Netherlands around 1608.\n2.Galileo improved and popularized the design in 1609\n3.He is often credited for the telescope's advancement.\n4.Galileo was the first to use a telescope for space study.\n5.He discovered Jupiter's four largest moons.",
            //                         style: TextStyle(
            //                             fontSize: 15, color: Colors.white),
            //                       ),
            //                     ),
            //                   ),

            //                   Text("Watch Video:",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight:FontWeight.bold),),
            //                   InkWell(
            //                       onTap: () {
            //                         Get.to(VideoExample(
            //                           videoId: 'uSC-71vXgh0',
            //                         ));
            //                       },
            //                       child: Container(
            //                            height: 250,
            //                           width: MediaQuery.of(context).size.width * 1,
            //                           child: Image.network(
            //                               YoutubePlayer.getThumbnail(
            //                                   videoId: "uSC-71vXgh0")))),

            //                                   Text("A refracting telescope uses a conv'x lens t'bend and focus light, which is then'magnifie'by a concave lens in the eyep'ece. Man'modern telescopes include a 'diagonal' mirror to angle the light for easier viewing",style: TextStyle(color: Colors.white),)
            //                 ],
            //               ),
            //       ],
            //     ),
            //   ),
            // ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
