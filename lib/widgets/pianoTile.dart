import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoKeys extends StatelessWidget {
  Color pianoColor;
  double pianoWidth;
  double pianoHeight;
  String audioFile;
  double paddingHorz;
  double paddingVert;
  final playerNote = AudioPlayer();

  PianoKeys(
      {required this.pianoColor,
      required this.pianoWidth,
      required this.pianoHeight,
      required this.audioFile,
      required this.paddingHorz,
      required this.paddingVert});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorz, vertical: paddingVert),
        child: GestureDetector(
          onTap: () async {
            await playerNote.play(AssetSource(audioFile));
          },
          child: Container(
            width: pianoWidth,
            height: pianoHeight,
            decoration: BoxDecoration(
                color: pianoColor,
                border: Border.all(color: Colors.black, width:  2),
                borderRadius: BorderRadius.circular(7)
            ),
          ),
        )
        );
  }
}
