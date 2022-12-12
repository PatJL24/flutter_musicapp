import 'package:flutter/material.dart';
import 'package:musicapp/widgets/pianoTile.dart';

import '../navigationDrawer/navigationDrawer.dart';

class Piano extends StatefulWidget {
  static const String routeName = '/piano';

  const Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  int currentIndex = 0;
  late double logicalWidth = MediaQuery.of(context).size.width;
  late double logicalHeight = MediaQuery.of(context).size.height - 50;

  late double whiteWidth = (logicalWidth / 9.2);
  late double whiteHeight = logicalHeight;

  late double blackWidth = (logicalWidth / 11);
  late double blackHeight = (logicalHeight / 2);

  List<String> whitePianoSounds = [
    "piano/pianoG.wav",
    "piano/pianoA.wav",
    "piano/pianoB.wav",
    "piano/pianoCC.wav",
    "piano/pianoD.wav",
    "piano/pianoE.wav",
    "piano/pianoF.wav",
    "piano/C-octave.mp3",
  ];

  List<String> blackPianoSounds = [
    "piano/pianoC.wav",
    "piano/pianoEE.wav",
    "piano/pianoFF.wav",
    "piano/pianoGG.wav",
    "piano/pianoBB.wav"
  ];

  @override
  Widget build(BuildContext context) {
    double logicalWidth = MediaQuery.of(context).size.width;
    double logicalHeight = MediaQuery.of(context).size.height - 50;

    double whiteWidth = (logicalWidth / 9.2);
    double whiteHeight = logicalHeight;

    double blackWidth = (logicalWidth / 11);
    double blackHeight = (logicalHeight / 1.8);

    return Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        appBar: AppBar(
          title: Text(
            "All-in-One Music App: Piano",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(48, 48, 48, 1),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: whitePianoSounds.length,
                itemBuilder: (_, index) {
                  return PianoKeys(
                      pianoColor: Colors.white,
                      pianoWidth: whiteWidth,
                      pianoHeight: whiteHeight,
                      paddingHorz: 6,
                      paddingVert: 0,
                      audioFile: whitePianoSounds[index]);
                },
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: logicalWidth / 13,
                    ),
                    PianoKeys(
                        pianoColor: Colors.black,
                        pianoWidth: blackWidth,
                        pianoHeight: blackHeight,
                        audioFile: blackPianoSounds[0],
                        paddingHorz: 0,
                        paddingVert: 0),
                    SizedBox(
                      width: logicalWidth / 21,
                    ),
                    PianoKeys(
                        pianoColor: Colors.black,
                        pianoWidth: blackWidth,
                        pianoHeight: blackHeight,
                        audioFile: blackPianoSounds[1],
                        paddingHorz: 0,
                        paddingVert: 0),
                    SizedBox(
                      width: logicalWidth / 7,
                    ),
                    PianoKeys(
                        pianoColor: Colors.black,
                        pianoWidth: blackWidth,
                        pianoHeight: blackHeight,
                        audioFile: blackPianoSounds[2],
                        paddingHorz: 0,
                        paddingVert: 0),
                    SizedBox(
                      width: logicalWidth / 30,
                    ),
                    PianoKeys(
                        pianoColor: Colors.black,
                        pianoWidth: blackWidth,
                        pianoHeight: blackHeight,
                        audioFile: blackPianoSounds[3],
                        paddingHorz: 0,
                        paddingVert: 0),
                    SizedBox(
                      width: logicalWidth / 25,
                    ),
                    PianoKeys(
                        pianoColor: Colors.black,
                        pianoWidth: blackWidth,
                        pianoHeight: blackHeight,
                        audioFile: blackPianoSounds[4],
                        paddingHorz: 0,
                        paddingVert: 0),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
