import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD7E0FF),
        //D7E0FF
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter Ogreniyorum'),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(child: Image.asset('images/flutterr.png')),
      ),
    ),
  );
}
