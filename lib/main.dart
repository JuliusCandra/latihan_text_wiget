import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++)
      widgets.add(Text("Data ke - " + i.toString(),
          style: new TextStyle(
            fontSize: 35,
          )));
  }

  final String name = "Candra Julius Sinaga";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: Icon(Icons.home),
            title: Text(name),
            subTitle: Text("Home"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: widgets,
          )),
    );
  }
}
