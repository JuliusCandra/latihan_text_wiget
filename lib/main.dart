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
          actions: <Widget>[
            Icon(Icons.search)
          ],
          actionsIconTheme: IconThemeData(color: Colors.yellow),
          backgroundColor: Colors.pinkAccent,
          bottom: PreferredSize(
              child: Container(
                color: Colors.orange,
                height: 4.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          child: Text("+"),
          onPressed: () {
            for (int i = 0; i < 3; i++) {
              print('Candra Julius Sinaga');
            }
          },
        ),
        body: null,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
