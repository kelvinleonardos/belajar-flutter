import 'dart:async';

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
  int c = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: const Text("Counter", style: TextStyle(fontSize: 30),), backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              c.toString(),
              style: TextStyle(fontSize: 100 + double.parse(c.toString())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120, 
                  height: 60, 
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        c--;
                      });
                    },
                    child: const Icon(Icons.remove))
                ), 
                SizedBox(
                  width: 120, 
                  height: 60, 
                  child: ElevatedButton(
                    onLongPress: () {
                      Timer.periodic(const Duration(milliseconds: 500), (timer) {
                        if (timer.tick > 1) {
                          setState(() {
                        c++;
                      });
                        }
                      }
                      );
                    },
                    onPressed: () {
                      setState(() {
                        c++;
                      });
                    },
                    child: const Icon(Icons.add))
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
