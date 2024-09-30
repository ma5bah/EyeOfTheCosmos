import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item {
  String title;
  // String imageUrl;
  int id;
  String description;
  String bgImage;
  // VoidCallback onTap;

  Item({
    required this.title,
    required this.id,
    required this.description,
    required this.bgImage,
  });
}

List<Item> value = [
  Item(
      id: 0,
      title: "Optical Spectrometer",
      description:
          "Black holes vary in size. Most massive galaxies are thought to have a supermassive black hole (hundreds of thousands to billions of times the mass of our Sun) at their centers. Other, much smaller, black holes are collapsed stars.Black holes are so dense that light cannot escape. This means we cannot 'see' them directly, but there are indirect ways to detect and learn about them.Choose to study black holes and you might learn how the nuclei of galaxies are powered or about the life cycles of stars!",
      bgImage: "assets/images/gamingsection/buildyourtelescope/blackhole.png"),
  Item(
      id: 1,
      title: "Optical Camera",
      description:
          "Because light from objects that are very far away from us must travel a long time to reach us, when we observe these objects, we are really seeing them as they were a long time ago. Studying the most distant objects can help us to learn about the first ever galaxies, and maybe even the first stars.Additionally, the Big Bang (which occurred ~13.8 billion years ago) left residual radiation. Observing this radiation can help us to understand the conditions of the early universe.Choose to study the early universe and investigate our cosmic beginnings!",
      bgImage:
          "assets/images/gamingsection/buildyourtelescope/starformation.png"),
];


class BuildYourOwnLevel1Page3 extends StatefulWidget {
  const BuildYourOwnLevel1Page3({super.key});

  @override
  State<BuildYourOwnLevel1Page3> createState() =>
      _BuildYourOwnLevel1Page3State();
}

class _BuildYourOwnLevel1Page3State extends State<BuildYourOwnLevel1Page3> {
  bool specto_controller = true;
  bool camera_controller = false;
  int description_controller = 0;

  final Buildyourtelescopevaluecontroller appController = Get.find();
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
                'Choose one or more instruments for each wavelength you have selected. You may only choose up to a TOTAL of TWO instruments.',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (specto_controller) {
                      specto_controller = false;
                    } else {
                      specto_controller = true;
                      description_controller = 0;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      width: 150,
                      height: 100 ,
                      decoration: BoxDecoration(
                        border: Border.all(color:specto_controller?Colors.blue: Colors.white),
                        image: DecorationImage(
                          image: AssetImage(
                              value[1].bgImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: Text(
                              '${value[1].title}',
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
                ),
                InkWell(
                  onTap: () {
                    if (camera_controller) {
                      camera_controller = false;
                    } else {
                      camera_controller = true;
                      description_controller = 1;
                    }
                    
                    setState(() {});
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      width: 150,
                      height:  100,
                      decoration: BoxDecoration(
                        border: Border.all(color:camera_controller? Colors.white:Colors.blue),
                        image: DecorationImage(
                          image: AssetImage(
                              value[0].bgImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: Text(
                              '${value[0].title}',
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
                ),
              ],
            ),

            SizedBox(
              height: 50,
            ),
            Obx(() => Text('Current State: ${appController.myState}')),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "WebLength",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),


                 OutlinedButton(
                  child: Text(
                    "Next Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (camera_controller && specto_controller)
                      appController.updateState2('11');
                    if (specto_controller && camera_controller == false)
                      appController.updateState2('10');
                    if (specto_controller == false && camera_controller)
                      appController.updateState2('01');
                    if (specto_controller == false &&
                        camera_controller == false)
                      appController.updateState2('10');
                    Get.to(BuildYourOwnLevel1Page4());
                  },
                ),
              ]
            ),
            SizedBox(height: 10,),
              
             Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 223, 230, 231),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(value[description_controller].description),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    )
    ;
  }
}
