import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.home),
            backgroundColor: Colors.red,
            title: Text("Candra Julius Sinaga"),
            actions: <Widget>[
              Icon(Icons.home),
              Icon(Icons.search),
            ],
            actionsIconTheme: IconThemeData(color: Colors.yellow),
            backgroundColor: Colors.pinkAccent,
            bottom: PreferredSize(child: Container(color: Colors.orange, height: 4.0), preferredSize: Size.fromHeight(4.0)),
            centerTitle: true),

        // Perubahan baru
        floatingActionButton: FloatingActionButton(
          child: Text("+"),
          onPressed: () {},
        ),
        body: null,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
