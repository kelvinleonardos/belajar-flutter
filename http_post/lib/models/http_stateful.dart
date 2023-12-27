import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpStateful {

  String? name, job, id, createdAt;

  HttpStateful({this.name, this.job, this.id, this.createdAt});

  static Future<HttpStateful> connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var hasil = await http.post(url, body: {
      "name": name,
      "job": job
    });

    var data = json.decode(hasil.body);
    return HttpStateful(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"]
    );
  }

}
