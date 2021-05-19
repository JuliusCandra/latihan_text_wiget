import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String nameTitle = "Candra Julius Sinaga";

  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++)
      widgets.add(Text(
        "Data ke - " + i.toString(),
        style: new TextStyle(fontSize: 35),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(nameTitle),
            ),
            body: ListView(
              children: widgets,
            )));
  }
}
