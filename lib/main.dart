import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() { runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, num: 1),
              buildKey(color: Colors.orange, num: 2),
              buildKey(color: Colors.yellow, num: 3),
              buildKey(color: Colors.green, num: 4),
              buildKey(color: Colors.blue, num: 5),
              buildKey(color: Colors.deepPurpleAccent, num: 6),
              buildKey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
