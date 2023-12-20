import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String name = "World";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: TextEditingController(
                    text: "Kelvin"
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Name")
                  ),
                ),
                Text("Hello, $name!", style: TextStyle(fontSize: 30),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
