import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'ABDUL SHAKUR',
                teks2: 'Nim: STI202102334 ',
              ),
              TeksUtama(
                teks1: 'NURUL MASITHOH',
                teks2: ' Nim: STI202102337',
              ),
              Container( 
                color: Colors.green, 
                child: TeksUtama(
                  teks1: 'KARTIKA PUSPA SEJATI ',
                  teks2: 'Nim: STI202102341 ',
                ),
              ),
              TeksUtama(
                teks1: 'AMANDA REFTI MARISKA',
                teks2: 'Nim : STI202102342',
              ),
              TeksUtama(
                teks1: 'TRI RAHAYU',
                teks2: 'Nim: STI202102347',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}