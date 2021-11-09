import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App 1"),
          backgroundColor: Colors.green.shade300,
          shadowColor: Colors.black,
        ),
        body: Column(
          children: [
            Text(
              "Hello",
              textScaleFactor: 5,
            ),
            Text(
              "Hii",
              textScaleFactor: 5,
            ),
          ],
        ),
      ),
    );
  }
}
