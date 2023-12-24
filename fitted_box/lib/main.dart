import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body: Container(
          color: Colors.blue,
          width: 300,
          height: 100,
          child: FittedBox(
            child: Text("Hello, World!"),
          ),
        ),
      ),
    );
  }
}
