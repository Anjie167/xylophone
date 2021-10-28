import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
  }

   Expanded buildKey({int soundNumber, Color color}){
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: (){
            playSound(soundNumber);
          }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1,color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.deepOrange),
              buildKey(soundNumber: 3, color: Colors.yellow),
              buildKey(soundNumber: 4, color: Colors.green),
              buildKey(soundNumber: 5, color: Colors.teal),
              buildKey(soundNumber: 6, color: Colors.blue),
              buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
        ),
      );
  }
}
