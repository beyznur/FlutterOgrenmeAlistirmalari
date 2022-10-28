import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'MENÜ UYGULAMAM',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ), //expended
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ), // çocuğunu ekstra alanı doldurması için zorla
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )), // r.
          Expanded(
            //ekranı bölüşmek için kardeş olmak zorundalar
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ), // çocuğunu ekstra alanı doldurması için zorla
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ), // r.

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ), // çocuğunu ekstra alanı doldurması için zorla
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )), // r.
        ],
      ),
    );
  }
}
