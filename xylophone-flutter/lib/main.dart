import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static List<Color> colors = [
    Colors.pink[400],
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
  ];

  @override
  Widget build(BuildContext context) {
    List<Audio> notes = [];

    for (int n = 1; n <= 7; n++) {
      notes.add(Audio.load('assets/note$n.wav'));
    }

    void play(int noteNumber) {
      Audio note = notes[noteNumber - 1];
      note.play();
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: colors
                .map(
                  (color) => Expanded(
                    child: TextButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            (colors.indexOf(color) + 1).toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: color,
                      ),
                      onPressed: () => play(colors.indexOf(color) + 1),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith(
                            (states) => EdgeInsets.zero),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
