import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.amber, child: const Text("Leading"),),
          leadingWidth: 100,
          title: const Text("AppBar"), 
          centerTitle: true,
        ),
      ),
    );
  }
}
