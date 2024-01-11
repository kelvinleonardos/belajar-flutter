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
  late String email;
  late String name;

  @override
  void initState() {
    // TODO: implement initState
    id = "empty";
    email = "empty";
    name = "empty";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP Request"
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 350,
          height: 150,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text(
                      "Email"
                    ),
                  ),
                  Flexible(
                    child: Text(
                      email
                    ),
                  )
                ],
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
                    child: Text(
                        name
                    ),
                  )
                ],
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
                    child: Text(
                        id
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  var myreq = await http.get(Uri.parse("https://reqres.in/api/users/2"));
                  if(myreq.statusCode == 200){
                    setState(() {
                      Map<String, dynamic> mybody = json.decode(myreq.body) as Map<String, dynamic>;
                      id = mybody['data']["id"].toString();
                      email = mybody["data"]["email"];
                      name = mybody["data"]["first_name"] + mybody["data"]["last_name"];
                    });
                  }
                },
                child: const Text(
                  "Request"
                ))
            ],
          ),
        ),
      ),
    );
  }
}
