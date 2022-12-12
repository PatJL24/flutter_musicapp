
import 'package:flutter/material.dart';
import 'package:musicapp/widgets/pianoTile.dart';

import '../navigationDrawer/navigationDrawer.dart';

class Guitar extends StatefulWidget {
  static const String routeName = '/guitar';
  const Guitar({Key? key}) : super(key: key);

  @override
  State<Guitar> createState() => _GuitarState();
}

class _GuitarState extends State<Guitar> {
  int currentIndex = 0;

  List<double> positions = [0, 1, 2, 3, 4, 5, 6, 7];

  List<String> pianoSounds = [
    "piano/C.mp3",
    "piano/D.mp3",
    "piano/E.mp3",
    "piano/F.mp3",
    "piano/G.mp3",
    "piano/A.mp3",
    "piano/B.mp3",
    "piano/C-octave.mp3"
  ];

  @override
  Widget build(BuildContext context) {
    double logicalWidth = MediaQuery.of(context).size.width;
    double logicalHeight = MediaQuery.of(context).size.height - 50;

    double whiteWidth = (logicalWidth / 9.2);
    double whiteHeight = logicalHeight;

    Color pianoWhiteKey = Colors.white;

    return Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        appBar: AppBar(
          title: Text(
            "All-in-One Music App: Guitar",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(48, 48, 48, 1),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Text("Guitar", style: TextStyle(color: Colors.white),),
            ),
            ),
          ),
        );
  }
}
