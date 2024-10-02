import 'package:eyesofcosmos/data/model/audio_manager_model.dart';
import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/presentation/widgets/Feature_card.dart';
import 'package:eyesofcosmos/presentation/widgets/drawer_widget.dart';
import 'package:eyesofcosmos/presentation/widgets/home_screen_trends_card.dart';
import 'package:flutter/material.dart';
import 'package:eyesofcosmos/data/model/top_trends_model.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late AudioPlayer _audioPlayer;
  // bool _isPlaying = false;
  @override
  // @override
  // void initState() {
  //   super.initState();
    
  //   _audioPlayer = AudioPlayer();
  //   _playAudio();
  // }

  // @override
  // void dispose() {
  //   _audioPlayer.stop();
  //   _audioPlayer.dispose();
  //   super.dispose();
  // }

  // void _playAudio() async {

  //    await _audioPlayer.setReleaseMode(ReleaseMode.loop); // Set the player to loop mode  
 
  // // if (result == 1) { // Check if the audio started playing successfully  
  // //   setState(() {  
  // //     _isPlaying = true;  
  // //   });  
  // // } else {  
  // //   // Handle the error, maybe show a message to the user  
  // // } 
  //   await _audioPlayer
  //       .play(AssetSource('music/homescreen_background.mp3'));
  //   setState(() {
  //     _isPlaying = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    AudioManager().playMusic('music/homescreen_background.mp3');
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black12,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white), // Set AppBar icons to white
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.homeScreenBg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.09,
              // ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Welcome',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Space Explorer',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.2,
              // ),
              SizedBox(height: 10),

              // const Spacer(),
              FeaturedCard(
                text: "Step into the cosmos and explore galaxies,planets, and stars like never before. Immerse yourself in the universe, where space unfolds before your eyes.",
              ),
              SizedBox(
                height: 20,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Top Trends',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Explore our top programs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.rowing_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        // Enable horizontal scrolling
                        itemCount: exploreItems.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: exploreItems[index].onTap,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: HomeScreenTrendsCard(
                                    title: exploreItems[index].title,
                                    imageUrl: exploreItems[index].imageUrl)),
                          );
                        },
                      ))),
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
