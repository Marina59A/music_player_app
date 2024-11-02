import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicModel {
  final Color color;
  final String sound;

  const MusicModel({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
