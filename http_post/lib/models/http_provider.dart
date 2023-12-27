import 'dart:convert';

import 'package:flutter/material.dart';

class HttpProvider with ChangeNotifier {

  Map<String, dynamic> _data = {};

  Map<String, dynamic> get _data => _data;

  int get jumlah => _data.length;

  void connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var hasil = await http.post(url, body: {
      "name": name,
      "job": job
    });

    _data = json.decode(hasil.body);
    notifyListeners();
  }

}
