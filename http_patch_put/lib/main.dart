import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

  late String id;
  late String name;
  late String job;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id = "empty";
    name = "empty";
    job = "empty";
  }

  TextEditingController nC = TextEditingController();
  TextEditingController jC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Put & Patch"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nC,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Name"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: jC,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Job"),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                    "ID"
                ),
              ),
              Flexible(
                  child: Text(id)
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                    "Name"
                ),
              ),
              Flexible(
                  child: Text(name)
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                    "Job"
                ),
              ),
              Flexible(
                  child: Text(job)
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var myreq = await http.put(
                Uri.parse("https://reqres.in/api/users/2"),
                body: {
                  "name": nC.text,
                  "job": jC.text
                }
            );
            print(myreq.body);
            setState(() {
              Map<String, dynamic> myres = json.decode(myreq.body) as Map<String, dynamic>;
              id = myres["id"];
              name = myres["name"];
              job = myres["job"];
            });
          },
          child: const Icon(
              Icons.send
          )
      ),
    );
  }
}