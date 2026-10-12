import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SpacingTextWidget(),
        ),
      ),
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Normal Text',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Letter Spacing',
          style: TextStyle(fontSize: 20, letterSpacing: 5),
        ),
        SizedBox(height: 20),
        Text(
          'Word Spacing Example',
          style: TextStyle(fontSize: 20, wordSpacing: 10),
        ),
        SizedBox(height: 20),
        Text(
          'Line 1\nLine 2\nLine 3',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, height: 2),
        ),
      ],
    );
  }
}