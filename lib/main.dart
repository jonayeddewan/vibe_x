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
      title: 'VibeX',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('VibeX'),
            backgroundColor: Colors.deepPurpleAccent,
            titleTextStyle: const TextStyle(fontSize: 30, color: Colors.white)),
      ),
    );
  }
}
