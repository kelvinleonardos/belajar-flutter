import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Tab> li = [
    const Tab(child: SizedBox(width: 50, child: Text("Tab 1"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 2"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 3"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 4"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 5"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 6"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 7"),)),
    const Tab(child: SizedBox(width: 50, child: Text("Tab 8"),))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: li.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar"),
            bottom: TabBar(
              isScrollable: true, 
              tabs: li
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Image.asset("images/1.png"),
            ), 
            Center(
              child: Image.asset("images/2.png"),
            ), 
            Center(
              child: Image.asset("images/3.png"),
            ), 
            Center(
              child: Image.asset("images/4.png"),
            ), 
            Center(
              child: Image.asset("images/5.png"),
            ), 
            Center(
              child: Image.asset("images/6.png"),
            ), 
            Center(
              child: Image.asset("images/7.png"),
            ), 
            Center(
              child: Image.asset("images/8.png"),
            )
          ]),
        ),
      ),
    );
  }
}
