import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummy = List.generate(100, (index) {
      return Product(faker.food.restaurant(),
          "https://picsum.photos/id/$index/50/50",
          Random().nextInt(100000).toString(),
          faker.lorem.sentence());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return GridTile(child: Image.network(dummy[index].toString()));
        },
        itemCount: dummy.length,),
    );
  }
}
