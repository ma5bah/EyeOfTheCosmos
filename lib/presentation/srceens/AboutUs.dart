import 'package:flutter/material.dart';

void main() {
  runApp(EyeOfCosmosApp());
}

class EyeOfCosmosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eye of Cosmos',
      theme: ThemeData(
        fontFamily: 'SansSerif', // You can set custom fonts here
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color:
                    Colors.grey[200], // Light grey background for the container
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center text vertically
                  children: [
                    Text(
                      "Hello Good People, We're",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " Team Artemis",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text:
                                " from Bangladesh, a group of six passionate creators behind the app, ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: "Eye of Cosmos",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text:
                                ", as part of the NASA Space Apps Challenge 2K24.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Our mission is to blend art and science by transforming the stunning visuals from the James Webb Space Telescope into an immersive musical experience.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Together, we're dedicated to inspiring curiosity and helping everyone appreciate the wonders of the universe a little more. Join us on this cosmic adventure with Eye of Cosmos—we can't wait for you to explore the stars with us!",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
            ),
          ),
        ],
      ),
    );
  }
}
