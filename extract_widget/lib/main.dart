import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Widget"),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatList(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
              imageurl: "https://picsum.photos/id/$index/200/300",
            );
          },
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subtitle;

  const ChatList(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text("07.30"),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageurl),
      ),
    );
  }
}