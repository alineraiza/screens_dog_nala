import 'package:challenge_2/challenge_ui/challenge_theme_data.dart';
import 'package:challenge_2/modules/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ChallengeThemeData.lightTheme,
      home: const HomePage(),
    );
  }
}

//TODO: Corrigir nome dos assets; Fazer o ThemeData

