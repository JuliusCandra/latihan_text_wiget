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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            elevation: 8.0,
            child: Text("+", style: new TextStyle(fontSize: 25, color: Colors.black)),
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

/*
Kesimpulannya
Card adalah sebuah widget yang menjadi membentuk kartu
Image.network() = adalah mengambil gambar dari internet
*/
