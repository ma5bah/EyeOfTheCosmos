import 'package:flutter/material.dart';

// Function that returns the terms and policy page widget
Widget buildTermsAndPolicyPage(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black, // Set background color to black
    body: Align(
      alignment: Alignment.bottomCenter, // Align container to the bottom
      child: Container(
        height: MediaQuery.of(context).size.height *
            0.8, // 85% of the screen height
        padding: const EdgeInsets.all(16.0), // Padding inside the container
        decoration: BoxDecoration(
          color: Colors.grey[200], // Container background color
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            // Title and Close Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.black), // Back button
                  onPressed: () {
                    Navigator.pop(context); // Go back when pressed
                  },
                ),
                const Align(
                  alignment: Alignment.center, // Center-aligned title
                  child: Text(
                    'Terms and Policies',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Space after the title
            Expanded(
              child: SingleChildScrollView(
                child: RichText(
                  textAlign: TextAlign.left, // Align text to the right
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5, // Line spacing
                    ),
                    children: [
                      TextSpan(
                          text:
                              "Welcome to Eye of Cosmos! By using our app, you agree to the following terms and policies. Please read them carefully.\n\n"),
                      TextSpan(
                        text: "1 Acceptance of Terms\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "By downloading and using the Eye of Cosmos app, you agree to comply with these Terms and Policies. If you do not agree, please refrain from using the app.\n\n",
                      ),
                      TextSpan(
                        text: "2 No User Accounts\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "The Eye of Cosmos app does not require you to create an account or provide any personal information. You can enjoy all features without registration.\n\n",
                      ),
                      TextSpan(
                        text: "3 Use of Content\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "All images, music, and narratives within the app are sourced from reputable organizations, including NASA, the Canadian Space Agency, and the European Space Agency. The content is for personal, non-commercial use only. You may not reproduce, distribute, or modify any content without prior written consent from the respective copyright holders.\n\n",
                      ),
                      TextSpan(
                        text: "4 Disclaimers\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "While we strive to provide accurate and up-to-date information, we make no guarantees regarding the reliability or completeness of the content in the app. Your use of the app is at your own risk.\n\n",
                      ),
                      TextSpan(
                        text: "5 Limitation of Liability\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "Team Artemis is not liable for any direct, indirect, incidental, or consequential damages arising from your use of the app. This includes, but is not limited to, any loss of data or interruption of service.\n\n",
                      ),
                      TextSpan(
                        text: "6 Changes to Terms\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "We may update these Terms and Policies from time to time. Any changes will be posted within the app, and your continued use signifies acceptance of the new terms.\n\n",
                      ),
                      TextSpan(
                        text: "7 Contact Us\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "If you have any questions or concerns about these Terms and Policies, please contact us at Team Artemis.\n\n",
                      ),
                      TextSpan(
                        text:
                            "Thank you for using Eye of Cosmos! Enjoy your journey through the universe!",
                      ),
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
