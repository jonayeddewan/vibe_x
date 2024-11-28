import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VibeX',
      theme: ThemeData(primaryColor: Colors.purple),
      home: Scaffold(),
      //home: const MyHomePage(title: 'My name is JD'),
    );
  }
}
