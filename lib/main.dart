import 'package:flutter/material.dart';
import 'game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('가위 바위 보!', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: const GameBody(),
      ),
    );
  }
}
