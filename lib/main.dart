import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("Candra Julius Sinaga"),
            actions: <Widget>[
              Icon(Icons.search),
            ],
            actionsIconTheme: IconThemeData(color: Colors.yellow),
            backgroundColor: Colors.pinkAccent,
            bottom: PreferredSize(child: Container(color: Colors.orange, height: 4.0), preferredSize: Size.fromHeight(4.0)),
            centerTitle: true),

        // Perubahan baru
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Text(
            "+",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            print("Candra Julius Sinaga,, Bangsat sekali kau");
          },
        ),
        body: Column(children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.circle,
            ),
          ),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
