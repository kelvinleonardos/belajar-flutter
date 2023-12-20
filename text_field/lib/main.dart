import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(28.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
          ),
        ),
      ),
    );
  }
}
