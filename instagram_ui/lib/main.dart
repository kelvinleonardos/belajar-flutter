import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: Color.fromARGB(100, 18, 18, 18)
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(100, 18, 18, 18)
        )
      ),
    );
  }
}
