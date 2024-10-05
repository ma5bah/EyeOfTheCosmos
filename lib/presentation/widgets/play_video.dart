import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoExample extends StatefulWidget {
  final String videoId;

  const VideoExample({super.key, required this.videoId});
  @override
  _VideoExampleState createState() => _VideoExampleState();
}

class _VideoExampleState extends State<VideoExample> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId, // Id of the YouTube video
      flags: const YoutubePlayerFlags(
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
      body: Expanded(
        child: Center(
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
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
