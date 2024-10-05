import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // For launching URLs

// Function that returns the page widget
Widget buildTeamArtemisPage(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black, // Set background color to black
    body: Align(
      alignment: Alignment.bottomCenter, // Align container to the bottom
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(16.0), // Padding inside the container
        decoration: BoxDecoration(
          color: Colors.grey[200], // Container background color
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Title and Close Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.black), // Close button color
                  onPressed: () {
                    Navigator.pop(context); // Close the page
                  },
                ),
                const Align(
                  alignment: Alignment.center, // Center-aligned title
                  child: Text(
                    'Team Artemis',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Add space between title and content
            // The rest of the content
            Expanded(
              child: SingleChildScrollView(
                child: RichText(
                  textAlign: TextAlign.left, // Right-align the text
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      height: 1.5, // Line spacing
                    ),
                    children: [
                      const TextSpan(text: "Hello Good People, We're "),
                      TextSpan(
                        text: "Team Artemis",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse(
                                'https://www.spaceappschallenge.org/nasa-space-apps-2024/find-a-team/team-artemis3/'));
                          },
                      ),
                      const TextSpan(
                          text:
                              " from Bangladesh, a group of six passionate creators behind the app, "),
                      TextSpan(
                        text: "Eye of Cosmos",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse(
                                'https://github.com/ma5bah/EyesOfCosmos'));
                          },
                      ),
                      const TextSpan(
                          text:
                              ", as part of the NASA Space Apps Challenge 2024.\n\n"),
                      const TextSpan(
                        text: "Our mission is\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text:
                            "to blend art and science by transforming the stunning visuals from the James Webb Space Telescope into an immersive musical experience.\n\n",
                      ),
                      const TextSpan(
                        text:
                            "Together, we're dedicated to inspiring curiosity and helping everyone appreciate the wonders of the universe a little more. Join us on this cosmic adventure with ",
                      ),
                      TextSpan(
                        text: "Eye of Cosmos",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse(
                                'https://github.com/ma5bah/EyesOfCosmos'));
                          },
                      ),
                      const TextSpan(
                          text:
                              "—we can't wait for you to explore the stars with us!"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
