import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();
  late AudioPlayer _audioPlayer;
  String? currentTrack;

  factory AudioManager() {
    return _instance;
  }

  AudioManager._internal() {
    _audioPlayer = AudioPlayer();
    _audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  Future<void> playMusic(String trackPath) async {
    print("Requested to play: $trackPath");
    if (currentTrack != trackPath) {
      await _audioPlayer.stop(); // Ensures the player stops previous track
    }
    await _audioPlayer.play(AssetSource(trackPath));
    currentTrack = trackPath;
  }

  void stopMusic() {
    _audioPlayer.stop();
    currentTrack = null;
  }

  void dispose() {
    print("rakib");
    _audioPlayer.dispose();
  }
}
