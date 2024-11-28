import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Welcome to VibeX',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          TextField(
              decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          )),
          SizedBox(height: 20),
          TextField(
              decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          )),
        ]),
      ),
    );
  }
}
