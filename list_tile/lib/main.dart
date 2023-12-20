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
        title: const Text("List Tile"),
      ), body: ListView(
        children: const [
          ListTile(
            title: Text("Ayang Beb"),
            subtitle: Text("Apa kabar bebzzz?"),
            leading: CircleAvatar(),
            trailing: Text("barusan"),
          )
        ],
      ),),
    );
  }
}
