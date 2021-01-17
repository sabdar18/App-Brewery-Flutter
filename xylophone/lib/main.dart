import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: XylophoneApp(),
      ),
    );
  }
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int waveNumber) {
    final player = AudioCache();
    player.play('note$waveNumber.wav');
  }

  Widget buildKey({color: Color, waveNumber: int}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(waveNumber);
        },
        child: Text(''),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.teal, waveNumber: 1),
          buildKey(color: Colors.purple, waveNumber: 2),
          buildKey(color: Colors.blue, waveNumber: 3),
          buildKey(color: Colors.yellow, waveNumber: 4),
          buildKey(color: Colors.red, waveNumber: 5),
          buildKey(color: Colors.indigo, waveNumber: 6),
          buildKey(color: Colors.orange, waveNumber: 7),
        ],
      ),
    );
  }
}
