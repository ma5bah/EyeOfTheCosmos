import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:eyesofcosmos/presentation/srceens/observatory/nirspec.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class WebbObservatoryPage extends StatefulWidget {
  const WebbObservatoryPage({Key? key}) : super(key: key);

  @override
  _WebbObservatoryPageState createState() => _WebbObservatoryPageState();
}

class _WebbObservatoryPageState extends State<WebbObservatoryPage> {
  late YoutubePlayerController _youtubeController;

  Future<List<Widget>> fetch_image_category() async {
    final url = "https://esawebb.org/images/";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final elements = document.getElementsByClassName(
          "me-3 border border-white btn-outline-primary p-1 mt-2 d-inline-block");
      elements.map((element) {
        final src = element.attributes['src'];
        final titleElement = element.text;
        print(src);
        print(titleElement);
      });
    }
    return [
      _buildChip('Webb Launch'),
      _buildChip('NIRISS'),
      _buildChip('NIRCAM'),
      _buildChip('NIRSPEC'),
      _buildChip('Instrument Module'),
      _buildChip('Mid Infrared Instrument')
    ];
  }

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: 'zXyz1QtPqUY', // YouTube video ID
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/toptrends/image2.png',
                  // Replace with your image path
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Webb Observatory',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Learn about the design and the major components\nand subsystems of Webb',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildChip('Webb Launch'),
                  _buildChip('NIRISS'),
                  _buildChip('NIRCAM'),
                  _buildChip('NIRSPEC'),
                  _buildChip('Instrument Module'),
                  _buildChip('Mid Infrared Instrument'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Designing Webb Video',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: YoutubePlayer(
                controller: _youtubeController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'The Webb Space Telescope is the most powerful space telescope ever made - and the most complex one yet designed. Did you know that the telescope\'s history stretches back before the Hubble Space Telescope was launched? This video explores the various early concept designs for Webb, including the criteria and the problems solved.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Major Components',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                'assets/images/toptrends/image2.png',
                // Replace with your image path
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildComponentItem(
                    title: 'Primary Mirror',
                    description:
                        'The primary mirror is the heart of Webb. It is made up of 18 hexagonal segments, forming a large mirror 6.5 meters in diameter, which collects infrared light from distant galaxies, stars, and planets.',
                  ),
                  SizedBox(height: 20),
                  _buildComponentItem(
                    title: 'Sunshield',
                    description:
                        'The sunshield is as big as a tennis court and is designed to protect Webb from the heat of the Sun, Earth, and Moon, keeping its instruments cool enough to detect faint infrared signals.',
                  ),
                  SizedBox(height: 20),
                  _buildComponentItem(
                    title: 'NIRCam',
                    description:
                        'NIRCam (Near Infrared Camera) is Webb\'s primary imaging instrument. It detects light from the earliest stars and galaxies that formed in the universe, as well as stars in nearby galaxies and young stars in the Milky Way.',
                  ),
                  SizedBox(height: 20),
                  _buildComponentItem(
                    title: 'NIRSpec',
                    description:
                        'NIRSpec (Near Infrared Spectrograph) will observe up to 100 objects simultaneously over a field of view, helping scientists study the formation of stars and distant galaxies.',
                  ),
                  SizedBox(height: 20),
                  _buildComponentItem(
                    title: 'MIRI',
                    description:
                        'MIRI (Mid-Infrared Instrument) will provide mid-infrared imaging and spectroscopy, allowing Webb to see distant objects obscured by cosmic dust, and analyze planets, asteroids, and the disks where planets form.',
                  ),
                  SizedBox(height: 20),
                  _buildComponentItem(
                    title: 'Fine Guidance Sensor',
                    description:
                        'The Fine Guidance Sensor (FGS) ensures that Webb is accurately pointed at its targets, providing the stability needed for the telescope\'s instruments to capture clear images.',
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Key Elements',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                'assets/images/toptrends/image2.png',
                // Replace with your image path
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'The Observatory consists of:\n'
                '- The Optical Telescope Element (OTE) includes:\n'
                '  - the mirrors\n'
                '  - the backplane\n'
                '- The Integrated Science Instrument Module (ISIM) contains these instruments:\n'
                '  - Mid-Infrared Instrument (MIRI)\n'
                '  - Near-Infrared Spectrograph (NIRSpec)',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageGalleryPage(category: label),
          ),
        );
        // You can add other onTap events for different categories if needed.
      },
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget _buildComponentItem(
      {required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
