import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // lock orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: mediaquery(),
      home: flexible_expanded(),
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

class mediaquery extends StatelessWidget {
  const mediaquery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      title: const Text("Responsive & Adaptive"),
    );
    final h = MediaQuery.of(context).size.height - myAppBar.preferredSize.height - MediaQuery.of(context).padding.top;
    final w = MediaQuery.of(context).size.width;
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: h * 0.3,
                color: Colors.amber,
              ),
              SizedBox(
                height: h * 0.7,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(),
                      title: Text("Hello, World!"),
                    );
                  }
                ),
              )
            ],
          ),
        )
      )
    );
  }
}

class flexible_expanded extends StatelessWidget {
  const flexible_expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible & Expanded"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Text("Teks 1"),
                )
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    child: Text("Teks 1"),
                  )
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: Text("Teks 1"),
                  )
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                color: Colors.red,
                child: Text("Teks 1"),
              ),
              Container(
                height: 100,
                color: Colors.green,
                child: Text("Teks 1"),
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: Text("Teks 1"),
                  )
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.red,
                child: Text("Teks 1"),
              ),
              Container(
                height: 100,
                color: Colors.green,
                child: Text("Teks 1"),
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text("Teks 1"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
