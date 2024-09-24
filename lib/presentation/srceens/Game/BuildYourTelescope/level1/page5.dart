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
    void initState() {
    // TODO: implement initState
    super.initState();
   
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

           

            SizedBox(
              height: 10,
            ),
            Obx(() => Text('Current State: ${appController.myState}',style: TextStyle(fontSize: 40,color: Colors.white),)),

          

            

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
