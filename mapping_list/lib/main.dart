import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> li = [
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    },
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    },
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    },
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    },
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    },
    {
      "name": "Kelvin",
      "age": 19,
      "fav_color": ["black", "black", "black", "black"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID"), centerTitle: true,
        ),
        body: ListView(
          children: li.map((e) {
            List warna = e['fav_color'];
            return Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      Column(
                        children: [
                          Text("nama : ${e['name']}"),
                          Text("umur : ${e['age']}")
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: 
                      warna.map((e) {
                        return Container(
                          color: Colors.amber,
                          width: 60,
                          height: 30,
                          child: Text(e),
                        );
                      }
                    ).toList()
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
