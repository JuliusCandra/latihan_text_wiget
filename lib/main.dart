import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: Container(
          mainAxisAlignment: MainAxisAlignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: Colors.pinkAccent,
          child: Container(
            height: 200,
            color: Colors.yellow,
            width: 100,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
        ),
      ),
    );
  }
}
