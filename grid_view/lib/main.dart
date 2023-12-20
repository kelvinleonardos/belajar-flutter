import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Container> mylist = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
        ),
        body:
        // GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 4/3
        //   ), children: mylist,
        // ),
          GridView.count(
            crossAxisCount: 3,
            children: mylist,
          )
      ),
    );
  }
}
