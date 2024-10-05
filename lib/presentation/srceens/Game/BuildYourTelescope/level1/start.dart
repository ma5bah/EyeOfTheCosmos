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
            decoration: const BoxDecoration(
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
                const Text(
                  'Welcome to Build Your Telescope!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Start Game Button
                SizedBox(
                  width: 200, // Set a fixed width for both buttons
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the first level of the game
                      Get.to(const BuildTelescopeLevel1Page1());
                    },
                    style: ElevatedButton.styleFrom(
                        // primary: Colors.blueAccent, // Button background color
                        ),
                    child: Text('Start Game'),
                  ),
                ),
                const SizedBox(height: 10), // Spacing between buttons
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
                          child: const Text("Yes"),
                        ),
                        cancel: ElevatedButton(
                          onPressed: () {
                            Get.back(); // Close the dialog
                          },
                          child: const Text("No"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        // primary: Colors.redAccent, // Button background color for exit
                        ),
                    child: Text('Exit'),
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
