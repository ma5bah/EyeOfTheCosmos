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

class _BuildTelescopeLevel1FinalScreenState extends State<BuildTelescopeLevel1FinalScreen> {
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
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/gamingsection/buildyourtelescope/level01/opticalir.png'),
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
                child: SingleChildScrollView(child: Column(children:[ Text(getContentForState('${appController.myState}'))])),
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
        return "The data your satellite produces might look like this real data from the GALEX mission, which had a single instrument onboard that was both an imager and a spectrometer at UV wavelengths. Having just one instrument that can do multiple things is a good way to maximize science results on smaller missions where there may not be much money or space.The image at left shows Centaurus A, a galaxy that contains at its center a black hole with powerful jets. The blue regions near the top of the image are star forming regions triggered by radiation, wind, and shocks caused by the jets interacting with surrounding clouds of dust and gas. The graph on the right is a spectrum, which shows the intensity of light over different wavelengths of Centaurus A's jetLearn more about GALEXhttp://www.galex.caltech.eduImage Credit: (left) NASA/JPL-Caltech/SSC Image Credit: (right) GALEX";
      case '10000':
        return 'The data your satellite produces might look like this real data from the spectrograph on the Far Ultraviolet Spectroscopic Explorer (FUSE) satellite, which was launched in 1999. The ultraviolet spectrum above, which shows intensity of light over a range of wavelengths, is of a quasar called ESO141-G55. Quasars are distant galaxies with supermassive black holes at their centers that spew massive amounts of energy from a small region around that black hole. The light from a quasar has to pass through clouds of gas in the space between galaxies and also inside our own galaxy before it reaches us here on Earth. Different elements in these clouds, like helium or hydrogen, absorb specific wavelengths of light, and by looking at the spectra of quasars, we can determine which elements are present in these clouds. This technique can work with objects other than quasars, however using a quasar allows you to use an ultraviolet source that is outside of our galaxy and thus beyond the molecular clouds being studied In the above spectrum, lines caused by the presence of molecular hydrogen are color-coded red, while other lines from oxygen, silicon, carbon, etc, are represented in green (cold gas) and blue (hot gas). Molecular hydrogen and cold interstellar gas clouds are very important for the formation of new stars and planets Learn more about FUSE http://archive.stsci.edu/fuse Image Credit: J. M. Shull and J. B. Tumlinson (University of Colorado) and NASA.';
      default:
        return 'The data your satellite produces might look like this real data from the spectrograph on the Far Ultraviolet Spectroscopic Explorer (FUSE) satellite, which was launched in 1999. The ultraviolet spectrum above, which shows intensity of light over a range of wavelengths, is of a quasar called ESO141-G55. Quasars are distant galaxies with supermassive black holes at their centers that spew massive amounts of energy from a small region around that black hole. The light from a quasar has to pass through clouds of gas in the space between galaxies and also inside our own galaxy before it reaches us here on Earth. Different elements in these clouds, like helium or hydrogen, absorb specific wavelengths of light, and by looking at the spectra of quasars, we can determine which elements are present in these clouds. This technique can work with objects other than quasars, however using a quasar allows you to use an ultraviolet source that is outside of our galaxy and thus beyond the molecular clouds being studied In the above spectrum, lines caused by the presence of molecular hydrogen are color-coded red, while other lines from oxygen, silicon, carbon, etc, are represented in green (cold gas) and blue (hot gas). Molecular hydrogen and cold interstellar gas clouds are very important for the formation of new stars and planets Learn more about FUSE http://archive.stsci.edu/fuse Image Credit: J. M. Shull and J. B. Tumlinson (University of Colorado) and NASA.The data your satellite produces might look like this real data from the spectrograph on the Far Ultraviolet Spectroscopic Explorer (FUSE) satellite, which was launched in 1999. The ultraviolet spectrum above, which shows intensity of light over a range of wavelengths, is of a quasar called ESO141-G55. Quasars are distant galaxies with supermassive black holes at their centers that spew massive amounts of energy from a small region around that black hole. The light from a quasar has to pass through clouds of gas in the space between galaxies and also inside our own galaxy before it reaches us here on Earth. Different elements in these clouds, like helium or hydrogen, absorb specific wavelengths of light, and by looking at the spectra of quasars, we can determine which elements are present in these clouds. This technique can work with objects other than quasars, however using a quasar allows you to use an ultraviolet source that is outside of our galaxy and thus beyond the molecular clouds being studied In the above spectrum, lines caused by the presence of molecular hydrogen are color-coded red, while other lines from oxygen, silicon, carbon, etc, are represented in green (cold gas) and blue (hot gas). Molecular hydrogen and cold interstellar gas clouds are very important for the formation of new stars and planets Learn more about FUSE http://archive.stsci.edu/fuse Image Credit: J. M. Shull and J. B. Tumlinson (University of Colorado) and NASA.';
    }
  }
