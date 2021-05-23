import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  final String name = "Candra Julius Sinaga";

  _MyAppState() {
    for (int i = 1; i < 101; i++) widgets.add(Text("Data ke - " + i.toString(), style: new TextStyle(fontSize: 35)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: Icon(Icons.home),
            title: Text(name),
          ),
          body: ListView(
            children: widgets,
          ),
        ));
  }
}
