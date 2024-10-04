import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      title: "Single Primary",
      description:
          "Black holes vary in size. Most massive galaxies are thought to have a supermassive black hole (hundreds of thousands to billions of times the mass of our Sun) at their centers. Other, much smaller, black holes are collapsed stars.Black holes are so dense that light cannot escape. This means we cannot 'see' them directly, but there are indirect ways to detect and learn about them.Choose to study black holes and you might learn how the nuclei of galaxies are powered or about the life cycles of stars!",
      bgImage: "assets/images/gamingsection/buildyourtelescope/blackhole.png"),
];

class BuildYourOwnLevel1Page4 extends StatefulWidget {
  const BuildYourOwnLevel1Page4({super.key});

  @override
  State<BuildYourOwnLevel1Page4> createState() =>
      _BuildYourOwnLevel1Page4State();
}

class _BuildYourOwnLevel1Page4State extends State<BuildYourOwnLevel1Page4> {
  int controller = 0;
  final Buildyourtelescopevaluecontroller appController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      appController.updateState('${controller}', 5);
    });
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
                'What wavelength do you want to use? You may only choose ONE.',
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
                    itemCount: value.length,
                    crossAxisCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          controller = index;
                          setState(() {});
                          appController.updateState('${controller}', 5);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 10),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller == value[index].id
                                      ? Colors.blue
                                      : Colors.white),
                              image: DecorationImage(
                                image: AssetImage(value[index].bgImage),
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
            // Obx(() => Text('Current State: ${appController.myState}')),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Optics",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                OutlinedButton(
                  child: Text(
                    "Next Step",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    // @TODO: Fix this error
                    Get.to(BuildTelescopeLevel1FinalScreen());
                  },
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 223, 230, 231),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(value[controller].description),
              ),
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
