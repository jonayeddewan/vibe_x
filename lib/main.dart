import 'package:flutter/material.dart';
import 'package:vibe_x/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VibeX',
      theme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
