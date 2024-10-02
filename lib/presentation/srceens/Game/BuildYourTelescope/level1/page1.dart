// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page2.dart';

class Item {
  String title;
  // String imageUrl;
  int id;
  String description;
  String img;
  // VoidCallback onTap;

  Item(
      {required this.id,
      required this.title,
      required this.description,
      required this.img
      // required this.imageUrl,
      });
}

List<Item> value = [
  Item(
      id: 0,
      title: "Black Holes",
      description:
          "Black holes vary in size. Most massive galaxies are thought to have a supermassive black hole (hundreds of thousands to billions of times the mass of our Sun) at their centers. Other, much smaller, black holes are collapsed stars. Black holes are so dense that light cannot escape. This means we cannot see them directly, but there are indirect ways to detect and learn about them. Choose to study black holes and you might learn how the nuclei of galaxies are powered or about the life cycles of stars!",
      img:
          'assets/images/gamingsection/buildyourtelescope/level01/blackhole.jpg'),
  Item(
      id: 1,
      title: "Star Formation",
      description:
          "Star Formation, there are details of how stars are born and evolve that are still mysterious to scientists. To see individual star birth, we have to be able to peer into the clouds of dust and gas that act as stellar nurseries. Scientists are also interested in how the many stars in galaxies act collectively to affect the evolution of those galaxies over cosmic time.Choose to study star formation and maybe you will learn something new about star birth – or even about the formation of planetary systems!",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/star.jpg'),
  Item(
      id: 2,
      title: "Early Universe",
      description:
          "Early Universe, because light from objects that are very far away from us must travel a long time to reach us, when we observe these objects, we are really seeing them as they were a long time ago. Studying the most distant objects can help us to learn about the first ever galaxies, and maybe even the first stars. Additionally, the Big Bang (which occurred ~13.8 billion years ago) left residual radiation. Observing this radiation can help us to understand the conditions of the early universe. Choose to study the early universe and investigate our cosmic beginnings!",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/earlyu.jpg'),
  Item(
      id: 3,
      title: "Galaxies",
      description:
          "Galaxies, Scientists still have many unanswered questions about galaxies, like how the first galaxies formed, or how we ended up with the large variety of galaxies we see today.Scientists would also like to know what the relationship is between the extremely large black holes that live at the centers of most galaxies and the galaxy that hosts them, and about how dark matter plays into the formation of galaxies.Choose to study galaxies and learn about how galaxies are powered and see how stars form within them.",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/galaxy.jpg'),
  Item(
      id: 4,
      title: "Exoplanet",
      description:
          "Exoplanets Planets outside the solar system are more common than we once thought. Since the first discovery, we have found thousands of extrasolar planets (there may even be more planets than stars!), and we continue to narrow in on smaller and more earth-like planets. Who knows how far away we are from finding another Earth, or even signs of life elsewhere in the universe? Choose to study exoplanets and learn about the building blocks of planet formation and the evolution of planetary systems.",
      img:
          'assets/images/gamingsection/buildyourtelescope/level01/exoplanet.jpg'),
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      appController.updateState('${controller}', 1);
    });
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
                    itemCount: value.length,
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
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller == value[index].id
                                      ? Colors.blue
                                      : Colors.white),
                              image: DecorationImage(
                                image: AssetImage(value[index].img),
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
                  "Science",
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
                    Get.to(BuildYourOwnLevel1Page2(selectedIndex: controller));
                  },
                ),
              ],
            ),

            SizedBox(
              height: 5,
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
