import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Candra Julius Sinaga"),
            leading: Icon(Icons.home),
            backgroundColor: Colors.pinkAccent,
            actions: <Widget>[
              Icon(Icons.search)
            ],
            actionsIconTheme: IconThemeData(
              color: Colors.black,
            ),
            centerTitle: true,
          ),
        ),
        debugShowCheckedModeBanner: false,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Text("+", new TextStyle(fontSize: 35), onPressed: () {
              return Text("Candra Julius Sinaga", style: new TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold));
            })));
  }
}
