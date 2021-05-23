import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: Icon(Icons.home),
            title: Text('Candra Julius Sinaga'),
            actions: <Widget>[
              Icon(Icons.search),
            ],
            actionsIconTheme: IconThemeData(color: Colors.pinkAccent),
            bottom: PreferredSize(child: Container(color: Colors.blue, height: 4.0), preferredSize: Size.fromHeight(4.0)),
            centerTitle: true,
          ),
        ),
        // Perubahan baru
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Text("+", style: new TextStyle(fontSize: 35, color: Colors.black)),
        ),
        debugShowCheckedModeBanner: false,
        body: Container(
          margin: EdgeInsets.all(20),
          color: Colors.pinkAccent,
          padding: EdgeInsets.all(10),
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
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(blurRadius: 10),
              ],
            ),
          ),
        ));
  }
}
