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
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: Colors.pinkAccent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.blue
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(blurRadius: 10),
              ],
            ),
            height: 200,
            width: 100,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
        ),
      ),
    );
  }
}
