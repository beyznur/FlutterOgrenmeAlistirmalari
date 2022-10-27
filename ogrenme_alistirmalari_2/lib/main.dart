import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUygulamam(),
  );
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/kahvalti.jpg'),
                ),
                Text(
                  'Kahvaltı Ailesi',
                  style: TextStyle(
                      fontFamily: 'FuzzyBubbles',
                      fontSize: 45,
                      color: Colors.brown[900]),
                ),
                Text(
                  'DAİMA ARADIĞINIZ YER...',
                  style:
                      GoogleFonts.pacifico(fontSize: 16, color: Colors.white),
                ),
                Container(
                    width: 200,
                    child: Divider(
                      height: 30,
                      color: Colors.brown[900],
                    )),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(Icons.email, size: 20, color: Colors.white),
                    title: Text(
                      'siparis@kahvailesi.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(Icons.phone, size: 20, color: Colors.white),
                    title: Text(
                      '+90 333 445 77 87',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
