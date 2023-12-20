import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          title: const Text("Date Format")
        ), 
        body: Center(
          child: Text(DateFormat.E().format(DateTime.now()), style: const TextStyle(fontSize: 40),)),
      ),
    );
  }
}
