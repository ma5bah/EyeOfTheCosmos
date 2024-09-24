import 'package:eyesofcosmos/presentation/srceens/onboarding/page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/image_assets.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.onBoardingBackground2Jpg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             const  Padding(
                padding: EdgeInsets.only(top: 70,right: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("Skip",style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoetsenOne',
                    fontSize: 12,
                  ),)
                
                ],),
              ),

                 const Padding(
                  padding: EdgeInsets.only(left: 20),
                   child: Text(
                                   'Discover',
                                   textAlign: TextAlign.left,
                                   style: TextStyle(
                    color: Colors.white,
                   
                    fontSize: 40,
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
                    'Set sail on an extraordinary interstellar odyssey withJWST. Peer into the depths of space, reveal the hidden mysteries of the cosmos, and marvel at the beauty ofcelestial wonders. The universe awaits your discovery.',
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
                      Get.to(const OnboardingPage3(),
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
