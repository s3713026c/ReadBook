import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:read_book/TextToSpeech.dart';

import 'TextRecognition.dart';

main() async {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("READ BOOK"),
      ),
      body:
      Center(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.volume_down_outlined),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextToSpeech()));
              },
            ),
            IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> TextRecognition()));
            })
          ],
        ),
      ),
    );

  }
}
