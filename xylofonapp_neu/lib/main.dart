import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int audioSample) {
    final AudioPlayer player = AudioPlayer();
    player.setAsset('assets/note$audioSample.wav');
    player.play();
  }

  Expanded produceKey({required Color color, required int audioSample}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(audioSample);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              produceKey(color: Colors.red, audioSample: 1),
              produceKey(color: Colors.orange, audioSample: 2),
              produceKey(color: Colors.yellow, audioSample: 3),
              produceKey(color: Colors.green, audioSample: 4),
              produceKey(color: Colors.teal, audioSample: 5),
              produceKey(color: Colors.blue, audioSample: 6),
              produceKey(color: Colors.purple, audioSample: 7),
            ],
          ),
        ),
      ),
    );
  }
}
