import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // For launching URLs

// Function to launch a URL
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// Function to build the "Resources" page layout
Widget buildResourcesPage(BuildContext context) {
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
            // Header with Back Arrow and Centered Title
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft, // Left-aligned back arrow
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.black), // Back button color
                    onPressed: () {
                      Navigator.pop(context); // Go back when pressed
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.center, // Center-aligned title
                  child: Text(
                    'NASA Resources',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Space after the header
            // Content in scrollable view
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Section: Webb Space Telescope
                    GestureDetector(
                      onTap: () => _launchURL('https://webbtelescope.org'),
                      child: const Text(
                        'Webb Space Telescope',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Learn more about the Webb Space Telescope on its website – explore an image gallery, recent news posts, and announcements.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                    // Second Section: NASA Astrophysics Division
                    GestureDetector(
                      onTap: () =>
                          _launchURL('https://science.nasa.gov/astrophysics'),
                      child: const Text(
                        'NASA Astrophysics Division',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Learn more about NASA’s Science Mission Directorate (SMD), specifically its Astrophysics Division and its study of the universe.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                    // Third Section: Webb Telescope Images
                    GestureDetector(
                      onTap: () => _launchURL(
                          'https://webbtelescope.org/resource-gallery/images'),
                      child: const Text(
                        'Webb Telescope Images',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Explore James Webb Space Telescope images, including cosmos, galaxies, nebulas, stars, exoplanets, solar systems, etc.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                    // Fourth Section: Webb Observatory
                    GestureDetector(
                      onTap: () => _launchURL(
                          'https://webbtelescope.org/about/observatory'),
                      child: const Text(
                        'Webb Observatory',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'The observatory is the space-based portion of the James Webb Space Telescope system.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                    // Fifth Section: Canadian Space Agency (CSA)
                    const Text(
                      'Canadian Space Agency (CSA)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () => _launchURL(
                          'https://asc-csa.gc.ca/eng/multimedia/playlist.asp'),
                      child: const Text(
                        'Canadian Space Agency Playlist',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Discover new music or enjoy some nostalgic songs with the Canadian Space Agency’s Moon-themed and eclipse playlists!',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                    // Sixth Section: National Geographic
                    const Text(
                      'National Geographic',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'It provides an overview of our Solar System.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
