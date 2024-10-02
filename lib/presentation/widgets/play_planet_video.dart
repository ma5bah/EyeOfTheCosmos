import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayPlanetVideo extends StatefulWidget {
  final String videourl;

  const PlayPlanetVideo({super.key, required this.videourl});
  @override
  _PlayPlanetVideoState createState() => _PlayPlanetVideoState();
}

class _PlayPlanetVideoState extends State<PlayPlanetVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    String? videoId;
    videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");
    print(videoId);

    
    _controller = YoutubePlayerController(
      initialVideoId: videoId ??"BBAyRBTfsOU" , // Id of the YouTube video
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white), 
      ),
      body: Center(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              print('Player is ready.');
            },
          ),
          builder: (context, player) {
            return Column(
              children: [
                // Some widgets like loading indicators can be placed here
                player,
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
