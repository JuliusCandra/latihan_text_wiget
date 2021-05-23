import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
     appBar: AppBar(
       title: Text("Candra Julius Sinaga").
       backgroundColor: Colors.red,
       centerTitle: true,
       leading: Icon(Icons.home),
     ),
     body: null,
     ),

    );
  }
}
