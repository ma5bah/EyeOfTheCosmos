import 'package:eyesofcosmos/application/controllers/main_bottom_nav_controller.dart';
import 'package:eyesofcosmos/data/constants.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/ScopeItOut/doubtsolvingpage.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/landing_game.dart';
import 'package:eyesofcosmos/presentation/srceens/IFrameView.dart';
import 'package:eyesofcosmos/presentation/srceens/Jwstcapture/landingScreen.dart';
import 'package:eyesofcosmos/presentation/srceens/home_screen.dart';
import 'package:eyesofcosmos/presentation/srceens/News/jwstmission_news.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Widget> screens = [
  HomeScreen(),
  JWSTCaptureLanding(),
  WebviewScreen(link: nasa_jwst_eyes),
  // Doubtsolvingpage(),
  GamingSectionLanding(),
  JwstmissionNews(),
];

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: screens[controller.currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: controller.currentSelectedIndex,
          onTap: controller.changeScreen,
          selectedItemColor: Colors.blue.shade800,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          // showSelectedLabels: true,
          elevation: 4,

          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black12,
                icon: Image.asset(
                  ImageAssets.homeicon,
                  height: 24,
                  width: 24,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(ImageAssets.jwstcaptureicon),
                label: 'JWST Capture'),
            BottomNavigationBarItem(
                icon: Image.asset(ImageAssets.dviewsicon), label: '3D views'),
            BottomNavigationBarItem(
                icon: Image.asset(ImageAssets.gamingicon), label: 'Game'),
            BottomNavigationBarItem(
                icon: Image.asset(ImageAssets.newsicon),
                label: 'JWST Misson And News'),
          ],
        ),
      );
    });
  }
}

// BottomNavigationBarItem(
//     icon:  Image.asset(ImageAssets.homeicon), label: 'Home'),
// BottomNavigationBarItem(
//     icon: Image.asset(ImageAssets.homeicon), label: 'JWST Capture'),
// BottomNavigationBarItem(
//     icon: Image.asset(ImageAssets.homeicon), label: '3D views'),
// BottomNavigationBarItem(
//     icon: Image.asset(ImageAssets.homeicon), label: 'Game'),

//     BottomNavigationBarItem(
//     icon:Image.asset(ImageAssets.homeicon), label: 'JWST Misson And News'),
