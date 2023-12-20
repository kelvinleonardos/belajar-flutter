import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Images Widget"),
        ),
        body: Center(
          child: Container(
            width: 300, 
            height: 500, 
            color: Colors.amber,
            child: const Image(
              image: AssetImage("images/unhas.png")),
          ), 
          ),
      ),
    );
  }
}
