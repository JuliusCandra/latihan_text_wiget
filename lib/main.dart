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
          backgroundColor: Colors.red,
          leading: Icon(Icons.home),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 250,
            ),
            Positioned(
              top: 195,
              left: 155,
              child: Container(
                color: Colors.black38,
                child: Center(
                  child: Text(
                    "style & Poistoned",
                    style: new TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
