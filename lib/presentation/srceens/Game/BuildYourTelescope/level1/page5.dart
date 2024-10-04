import 'package:eyesofcosmos/application/controllers/buildyourtelescopevaluecontroller.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class BuildTelescopeLevel1FinalScreen extends StatefulWidget {
  const BuildTelescopeLevel1FinalScreen({super.key});

  @override
  State<BuildTelescopeLevel1FinalScreen> createState() =>
      _BuildTelescopeLevel1FinalScreenState();
}

class _BuildTelescopeLevel1FinalScreenState
    extends State<BuildTelescopeLevel1FinalScreen> {
  final Buildyourtelescopevaluecontroller appController = Get.find();

  @override
  void initState() {
    // TODO: implement initState

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
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Your Satellite ..',
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
                height: 300,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/gamingsection/buildyourtelescope/satellite2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            // Obx(() => Text('Current State: ${appController.myState}',style: TextStyle(fontSize: 40,color: Colors.white),)),

            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 223, 230, 231),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Text(getContentForState('${appController.myState}'))
                ])),
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

String getContentForState(String state) {
  switch (state) {
    case '00000':
      return "The Ultraviolet/Optical Telescope (UVOT) on the Neil Gehrels Swift Observatory captures data that highlights the complementary nature of different wavelengths in astrophysics. While optical observations are typically conducted using ground-based observatories, larger satellites like Swift include smaller telescopes for simultaneous X-ray and optical data collection, which is crucial for studying gamma-ray bursts (GRBs). GRBs are massive explosions that may signal the birth of black holes and emit light across the spectrum, often producing visible afterglows. The UVOT notably captured the optical afterglow of GRB 080319B, which was so bright that it could be seen with the naked eye from 7.5 billion light-years away, thanks to the focused gamma-ray jet aimed at Earth. This event provided an extraordinary opportunity for scientists to study the structure of such distant phenomena. For more information about Swift, visit [NASA's Swift page](https://imagine.gsfc.nasa.gov/observatories/learning/swift/).";
    case '01000':
      return "The data your satellite produces might look like this real data from the GALEX mission, which had a single instrument onboard that was both an imager and a spectrometer at UV wavelengths. Having just one instrument that can do multiple things is a good way to maximize science results on smaller missions where there may not be much money or space. The image at left shows Centaurus A, a galaxy that contains at its center a black hole with powerful jets. The blue regions near the top of the image are star forming regions triggered by radiation, wind, and shocks caused by the jets interacting with surrounding clouds of dust and gas. The graph on the right is a spectrum, which shows the intensity of light over different wavelengths of Centaurus A's jet. Learn more about GALEX: http://www.galex.caltech.edu/ Image Credit: (left) NASA/JPL-Caltech/SSC Image Credit: (right) GALEX";
    default:
      return 'The data generated by your satellite might resemble this real-world example from the spectrograph on the Far Ultraviolet Spectroscopic Explorer (FUSE) satellite, which launched in 1999. The ultraviolet spectrum shown illustrates the intensity of light across various wavelengths from a quasar known as ESO141-G55. Quasars are extremely luminous, distant galaxies powered by supermassive black holes at their centers. These black holes release enormous amounts of energy from a compact region surrounding them.As the light from a quasar travels toward Earth, it passes through vast clouds of gas both in intergalactic space and within our own galaxy. Different elements within these gas clouds, such as helium or hydrogen, absorb specific wavelengths of light. By analyzing the light spectrum of quasars, we can identify which elements are present in these clouds. While this technique can be applied to various celestial objects, using quasars provides a unique advantage. Since they are located far outside our galaxy, their light passes through molecular clouds that we wish to study, allowing us to examine these regions more effectively.In the spectrum above, the absorption lines caused by molecular hydrogen are highlighted in red. Other elements like oxygen, silicon, and carbon are shown in green, representing cooler gas, and blue, indicating hotter gas. Molecular hydrogen and cold interstellar gas clouds play a crucial role in the formation of stars and planets, making them vital subjects of study. You can learn more about the FUSE mission at [FUSE Archive](http://archive.stsci.edu/fuse)';
  }
}
