import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String nameTitle = "Candra Julius Sinaga";

  List<Widget> widgets = [];

 var counter = 1;

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
              children: <Widget>[
                Row(
                  RaisedButton(child: Text("Tambah Data",style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
                  onPressed: ),
                  RaisedButton(child: Text("Hapus Data", style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), )
                )              ]
            )
        )
    );
  }
}
