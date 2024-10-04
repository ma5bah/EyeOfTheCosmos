import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eyesofcosmos/presentation/srceens/Game/BuildYourTelescope/level1/page1.dart'; // Import the target page

class StartGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/gamingsection/buildyourtelescope/startbg.png'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Build Your Telescope!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                // Start Game Button
                SizedBox(
                  width: 200, // Set a fixed width for both buttons
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the first level of the game
                      Get.to(BuildTelescopeLevel1Page1());
                    },
                    child: Text('Start Game'),
                    style: ElevatedButton.styleFrom(
                        // primary: Colors.blueAccent, // Button background color
                        ),
                  ),
                ),
                SizedBox(height: 10), // Spacing between buttons
                // Exit Button
                SizedBox(
                  width: 200, // Set a fixed width for both buttons
                  child: ElevatedButton(
                    onPressed: () {
                      // Show confirmation dialog
                      Get.defaultDialog(
                        title: "Exit Game",
                        middleText: "Are you want to exit the game?",
                        confirm: ElevatedButton(
                          onPressed: () {
                            Get.back(); // Close the dialog
                            Get.back(); // Navigate back to the previous page
                          },
                          child: Text("Yes"),
                        ),
                        cancel: ElevatedButton(
                          onPressed: () {
                            Get.back(); // Close the dialog
                          },
                          child: Text("No"),
                        ),
                      );
                    },
                    child: Text('Exit'),
                    style: ElevatedButton.styleFrom(
                        // primary: Colors.redAccent, // Button background color for exit
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
