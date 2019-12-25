import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatelessWidget {
  static AudioCache player = AudioCache();
  final notesName = ['C', 'D', 'E', 'F', 'G', 'A', 'B'];
  final colors = [
    Colors.pink[100],
    Colors.pink[200],
    Colors.pink[300],
    Colors.pink[400],
    Colors.pink[500],
    Colors.pink[600],
    Colors.pink[700],
  ];

  void playNote(int note) {
    player.play('note$note.wav');
  }

  List<Widget> createNotes() {
    List<Widget> notes = [];
    for (int i = 0; i <= 6; i++) {
      notes.add(note(
          color: colors[i],
          noteName: notesName[i],
          onPressed: () {
            playNote(i + 1);
          }));
    }
    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: createNotes(),
    );
  }
}

Widget note({Color color, String noteName, Function onPressed}) => Expanded(
      child: FlatButton(
        color: color,
        child: Text(
          noteName,
          style: TextStyle(color: Colors.black38),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
