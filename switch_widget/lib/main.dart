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
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch"),
        ),
        body: Center(
          child: Column(
            children: [
              Switch.adaptive(value: status, onChanged: (value) {
                setState(() {
                  status = !status;
                });
              }),
              Text(
                  (status == true) ? "Switch off" : "Switch on",
                style: const TextStyle(
                  fontSize: 50
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
