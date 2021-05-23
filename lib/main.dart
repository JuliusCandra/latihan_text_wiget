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
            backgroundColor: Colors.blue,
            actions: <Widget>[
              Icon(Icons.search)
            ],
            actionsIconTheme: IconThemeData(
              color: Colors.black,
            ),
            bottom: PreferredSize(
              child: Container(color: Colors.yellow, height: 4.0),
              preferredSize: Size.fromHeight(4.0),
            ),
            centerTitle: true,
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Text(
              "+",
              style: new TextStyle(fontSize: 35, color: Colors.black),
            ),
            onPressed: () {
              print("Candra Julius Sinaga");
            },
          ),
        ),
        debugShowCheckedModeBanner: false,
        body: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            color: Colors.red,
            child: Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 20, bottom: 10),
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
            )));
  }
}
