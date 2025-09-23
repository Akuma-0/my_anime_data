import 'package:flutter/material.dart';
import 'package:my_anime_data/features/home/ui/home_screen.dart';

class AnimeDataApp extends StatelessWidget {
  const AnimeDataApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Anime Data',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
