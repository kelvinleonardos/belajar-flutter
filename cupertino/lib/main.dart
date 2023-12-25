import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
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
        title: Text("Cupertino"),
      ),
      body: Center(
        child: CupertinoButton(
          child: Text("Dialog Box"),
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return CupertinoAlertDialog(
                title: Text("Confirm"),
                content: Text("Are you sure want to delete this content?"),
                actions: [
                  TextButton(onPressed: () {
                    return Navigator.of(context).pop();
                  }, child: Text("Yes")),
                  TextButton(onPressed: () {
                    return Navigator.of(context).pop();
                  }, child: Text("Yes"))
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
