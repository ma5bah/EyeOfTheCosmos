import 'package:eyesofcosmos/presentation/srceens/IFrameView.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.onBoardingBackground1Jpg),
                  fit: BoxFit.contain,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Eye of Cosmos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Music Changer'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Resources'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Terms and Policy'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("About us"),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: const Icon(
                        Icons.facebook,
                      ),
                      color: Colors.blue,
                      onPressed: () => {
                            Get.to(WebviewScreen(link: "https://rakibhasan.me",onInitFunction: (){}))
                          }),
                  IconButton(
                      icon: const Icon(
                        Icons.file_download,
                      ),
                      color: Colors.blue,
                      onPressed: () => {
                            Get.to(WebviewScreen(
                                link:
                                    "https://drive.google.com/file/d/11WBlYiL4OcP6Cj9_SwFRH4HUm94W3rqR/view?usp=drivesdk"))
                          }),
                  IconButton(
                      icon: Image.asset(
                        ImageAssets.githubLogo,
                        width: 25,
                        height: 25,
                        color: Colors.white,
                      ),
                      color: Colors.blue,
                      onPressed: () => {
                            Get.to(WebviewScreen(
                                link: "https://github.com/ma5bah/EyesOfCosmos"))
                          })
                ],
              ),
            ),
          ],
        ),
      );
  }
}