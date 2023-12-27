import 'package:flutter/material.dart';
import 'package:http_post/models/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({super.key});
  final dataprovider = Provider.of<HttpProvider>(context, listen: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST - PROVIDER"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  value.?? "ID : Belum ada data",
                  style: TextStyle(fontSize: 20),
                ),,
              )
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                "Belum ada data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                "Belum ada data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                "Belum ada data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataprovider.connectAPI("joni", "developer");
              },
              child: Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
