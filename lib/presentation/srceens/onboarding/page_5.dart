import 'package:eyesofcosmos/presentation/srceens/home_screen.dart';
import 'package:eyesofcosmos/presentation/srceens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/image_assets.dart';

class OnboardingPage5 extends StatelessWidget {
  const OnboardingPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.onBoardingBackground6Jpg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Padding(
                padding: const EdgeInsets.only(top: 70,right: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(MainBottomNavScreen());
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoetsenOne',
                          fontSize: 12,
                        ),
                      ),
                    )
                
                ],),
              ),

                 const Padding(
                  padding: EdgeInsets.only(left: 20),
                   child: Text(
                                   'Learn about',
                                   textAlign: TextAlign.left,
                                   style: TextStyle(
                    color: Colors.white,
                   
                    fontSize: 35,
                                   ),
                                 ),
                 ),
                    const Padding(
                  padding: EdgeInsets.only(left: 20),
                   child: Text(
                                  'JWST',
                                   textAlign: TextAlign.left,
                                   style: TextStyle(
                    color: Colors.white,
                   
                    fontSize: 42,
                    fontWeight: FontWeight.bold
                                   ),
                                 ),
                 ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              
             const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
               child:  Center(
                 child: Text(
                    'Discover the Wonders of Galaxies: Embark on a cosmic adventure to explore the breathtaking galaxies of our universe.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PoetsenOne',
                      fontSize: 16,
                    ),
                  ),
               ),
             ),
              const Spacer(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: () => {
                      Get.offAll(
                       const MainBottomNavScreen(),
                         transition: Transition.leftToRightWithFade,  // Specify the transition type here  
              duration: const Duration(milliseconds: 500)
                    )
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageAssets.onBoardingButtonPng),
                          fit: BoxFit.contain,
                
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
