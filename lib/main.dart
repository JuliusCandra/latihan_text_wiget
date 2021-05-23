import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugCheckedBanner: false,
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
