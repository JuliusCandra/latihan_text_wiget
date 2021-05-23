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
          body: Container(
              child: Card(
                  child: Column(children: <Widget>[
            Image.network("https://www.linkedin.com/search/results/people/?firstName=Candra&lastName=Sinaga&origin=SEO_PSERP"),
            Text("Candra Julius Sinaga")
          ])))),
    );
  }
}
