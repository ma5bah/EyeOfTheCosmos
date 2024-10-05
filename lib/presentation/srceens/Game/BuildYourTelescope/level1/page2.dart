import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class Item {
  String title;
  // String imageUrl;
  int id;
  String description;
  // VoidCallback onTap;
  String img;

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
      title: "Infrared",
      description:
          "Infrared radiation lies between visible light and microwaves, with wavelengths ranging from 700 nanometers (nm) to 1 millimeter (mm). Infrared is invisible to the human eye but can be experienced as heat. It is widely used in everyday technologies such as remote controls, night vision goggles, and thermal imaging cameras that detect heat signatures. Infrared helps astronomers observe celestial objects, as it can penetrate dust clouds that would otherwise block visible light, revealing hidden parts of the universe.",
      img:
          'assets/images/gamingsection/buildyourtelescope/level01/infrared.jpg'),
  Item(
      id: 1,
      title: "Optical",
      description:
          "Visible light, or the optical spectrum, ranges from 400 nm to 700 nm and is the portion of the electromagnetic spectrum that can be seen by the human eye. It includes all the colors we can perceive, from violet to red. Visible light is crucial for everything related to human vision, photography, and illumination. When sunlight passes through a prism, it splits into its constituent colors, illustrating the wide spectrum of visible light that makes up everyday images and scenery.",
      img:
          'assets/images/gamingsection/buildyourtelescope/level01/optical.jpg'),
  Item(
      id: 2,
      title: "Ultraviolet",
      description:
          "Ultraviolet light has wavelengths between 10 nm and 400 nm and is just beyond the visible spectrum on the shorter wavelength side. While invisible to humans, UV rays are known for their effects on skin—both beneficial, like synthesizing vitamin D, and harmful, like causing sunburns. UV radiation is used for sterilizing medical equipment, detecting substances with black lights, and studying the properties of materials. In astronomy, UV light helps us observe the high-energy processes around stars and galaxies.",
      img:
          'assets/images/gamingsection/buildyourtelescope/level01/ultraviolet.jpg'),
  Item(
      id: 3,
      title: "Microwave",
      description:
          "Microwaves have wavelengths ranging from 1 mm to 1 meter and are used extensively in communication and cooking. In the kitchen, microwaves interact with water molecules to heat food. Beyond that, microwaves play a major role in satellite and cellular communications, as well as in radar systems used by meteorologists to track weather patterns. Microwaves have longer wavelengths compared to infrared, allowing them to penetrate obstacles like clouds and rain, making them highly useful for data transmission in challenging conditions.",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/galaxy.jpg'),
  Item(
      id: 4,
      title: "X-ray",
      description:
          "X-rays have very short wavelengths, between 0.01 nm and 10 nm, giving them high energy levels. This high energy allows X-rays to penetrate materials like skin and soft tissue while being absorbed by denser substances like bone. This property makes X-rays an invaluable tool in medical imaging for visualizing internal structures in the body. Beyond medical uses, X-rays are used in airport security to inspect luggage and in astronomy to study energetic celestial events, such as supernovas and black holes.",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/xray.jpg'),
  Item(
      id: 5,
      title: "Gamma-Ray",
      description:
          "Gamma rays are the most energetic form of electromagnetic radiation, with wavelengths less than 0.01 nm. They originate from the radioactive decay of atomic nuclei, as well as from extreme cosmic events like supernova explosions and the activity of neutron stars. Gamma rays have extremely high energy, capable of penetrating almost any material, and are used in medical treatments to target cancer cells. They are also important in astrophysics for studying the most energetic events in the universe, helping scientists understand more about the origins of cosmic phenomena.",
      img: 'assets/images/gamingsection/buildyourtelescope/level01/gamma.jpg'),
];

class BuildYourOwnLevel1Page2 extends StatefulWidget {
  final int selectedIndex;

  const BuildYourOwnLevel1Page2({super.key, required this.selectedIndex});

  @override
  State<BuildYourOwnLevel1Page2> createState() =>
      _BuildYourOwnLevel1Page2State();
}

class _BuildYourOwnLevel1Page2State extends State<BuildYourOwnLevel1Page2> {
  int controller = 0;
  final Buildyourtelescopevaluecontroller appController = Get.find();
  late List<Item> filteredItems;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      appController.updateState('$controller', 2);
    });

    // Filter the items based on the selectedIndex
    filteredItems = _getFilteredItems(widget.selectedIndex);
  }

  List<Item> _getFilteredItems(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return [value[1], value[2], value[4], value[5]];
      case 1:
        return [value[0], value[1], value[2]];
      case 2:
        return [value[0], value[3]];
      case 3:
        return [value[0], value[1], value[2], value[4], value[5]];
      default:
        return [value[0], value[1]];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'What wavelength do you want to use? You may only choose ONE.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'PoetsenOne'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                child: MasonryGridView.count(
                  itemCount: filteredItems.length,
                  crossAxisCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        controller = index; // Track index of filteredItems
                        setState(() {});
                        appController.updateState('$controller', 2);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: controller == index
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            image: DecorationImage(
                              image: AssetImage(filteredItems[index].img),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 20,
                                bottom: 20,
                                child: Text(
                                  filteredItems[index].title,
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Obx(() {
            //   print(
            //       'Current State: ${appController.myState}'); // Print to console
            //   return Text(
            //     'Current State: ${appController.myState}',
            //     style: TextStyle(color: Colors.white),
            //   );
            // }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "WaveLength",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                OutlinedButton(
                  child: const Text(
                    "Next Step",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (controller != -1) {
                      // Check if an item is selected
                      Get.to(const BuildYourOwnLevel1Page3());
                    }
                  },
                ),
              ],
            ),
            if (controller != -1) ...[
              // Only show the description if an item is selected
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 223, 230, 231),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(filteredItems[controller]
                      .description), // Use filteredItems for description
                ),
              ),
            ],
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
