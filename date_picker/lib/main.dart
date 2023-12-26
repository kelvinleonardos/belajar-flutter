import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? choosenDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choosen date:"),
            OutlinedButton(
              child: Text(
                choosenDate.toString(),
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: choosenDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  // initialEntryMode: DatePickerEntryMode.calendar,
                  // initialDatePickerMode: DatePickerMode.year,
                  // selectableDayPredicate: (day) {
                  //   if(day.isBefore(other)){
                  //
                  //   }
                  // }
                ).then((value) {
                    setState(() {
                      choosenDate = value;
                    });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
