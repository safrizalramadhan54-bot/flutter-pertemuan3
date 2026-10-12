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
          child: RichTextWidget(),
        ),
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // RichText bukan const constructor, jadi const-nya ada di TextSpan
    return RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: [
          TextSpan(text: 'Saya sedang belajar '),
          TextSpan(
            text: 'Flutter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextSpan(text: ' dan '),
          TextSpan(
            text: 'Dart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}