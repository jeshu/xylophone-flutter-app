import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int code) {
    final player = AudioCache();
    player.play('note$code.wav');
  }

  Widget buildKey ({int key, Color color}) => (
      Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        },
      ),
    )
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, key:1),
              buildKey(color: Colors.orange, key: 2),
              buildKey(color: Colors.yellow, key: 3),
              buildKey(color: Colors.green, key: 4),
              buildKey(color: Colors.teal, key: 5),
              buildKey(color: Colors.blue, key: 6),
              buildKey(color: Colors.purple, key: 7),
            ],
          ),
        ),
      ),
    );
  }
}