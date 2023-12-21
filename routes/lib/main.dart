import 'package:flutter/material.dart';
import 'package:routes/GalleryPage.dart';
import './HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home' : (context) => const HomePage(),
        '/gallery' : (context) => const GalleryPage()
      },
    );
  }
}
