// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player_app/models/music_model.dart';
import 'package:music_player_app/widgets/music_item.dart';

class MusicPlayerView extends StatelessWidget {
  const MusicPlayerView({super.key});
  static String id = 'music player app';
  final List<MusicModel> music = const [
    MusicModel(color: Color(0xfffe4039), sound: 'sounds/note1.wav'),
    MusicModel(color: Color(0xfffd982b), sound: 'sounds/note2.wav'),
    MusicModel(color: Color(0xfffdeb57), sound: 'sounds/note3.wav'),
    MusicModel(color: Color(0xff33af57), sound: 'sounds/note4.wav'),
    MusicModel(color: Color(0xff009587), sound: 'sounds/note5.wav'),
    MusicModel(color: Color(0xff0097ed), sound: 'sounds/note6.wav'),
    MusicModel(color: Color(0xffa227ac), sound: 'sounds/note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff243139),
          title: Text(
            'Flutter Tune',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: music
              .map(
                (e) => MusicItem(
                  model: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
