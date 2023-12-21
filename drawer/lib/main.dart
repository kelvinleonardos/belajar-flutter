import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/home' : (context) => const HomePage(),
        '/settings' : (context) => const SettingsPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      drawer: const DrawerSection(),
      body: const Center(
        child: Text("Text"),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SETTINGS"),
      ),
      drawer: const DrawerSection(),
      body: const Center(
        child: Text("Text"),
      ),
    );
  }
}

class DrawerSection extends StatelessWidget {
  const DrawerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.red,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(20),
            child: const Text("Menu", style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            leading: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/settings');
            },
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
          )
        ],
      ),
    );
  }
}