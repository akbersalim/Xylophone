import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Xylophone'),
            centerTitle: true,
          ),
          body: XylophoneApp(),
        ),
      ),
    );

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final audio = AssetsAudioPlayer();

  void play(int i) {
    audio.open(
      Audio("assets/note$i.wav"),
    );
  }

  Expanded build_key(var c, int n) {
    return Expanded(
      child: FlatButton(
        color: c,
        child: Container(),
        onPressed: () {
          play(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        build_key(Colors.red, 1),
        build_key(Colors.orange, 2),
        build_key(Colors.yellow, 3),
        build_key(Colors.green, 4),
        build_key(Colors.blueGrey, 5),
        build_key(Colors.blue, 6),
        build_key(Colors.purple, 7),
      ],
    );
  }
}
