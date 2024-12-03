import 'package:flutter/material.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'VibeX',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
