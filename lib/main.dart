import 'package:flutter/material.dart';
import 'package:music_player_app/views/music_player_view.dart';

void main() {
  runApp(const MusicPlayerApp());
}

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player App',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes:{
        MusicPlayerView.id:(context) => const MusicPlayerView(),
      },
      initialRoute: MusicPlayerView.id,
    );
  }
}

