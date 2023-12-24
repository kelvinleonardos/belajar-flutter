import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ab = AppBar(
      title: Text("Layout Builder"),
    );
    final bw = MediaQuery.of(context).size.width;
    final bh = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - ab.preferredSize.height;

    return MaterialApp(
      home: Scaffold(
        appBar: ab,
        body: Container(
          height: bh * 0.3,
          width: bw,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(bw: bw),
              MyContainer(bw: bw),
              MyContainer(bw: bw)
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.bw,
  });

  final double bw;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight * 0.5,
          width: bw * 0.2,
          color: Colors.red,
        );
      },
    );
  }
}
