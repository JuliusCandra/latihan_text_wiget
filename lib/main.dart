import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Aplikasi Candra Julius Sinaga',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Candra Julius Sinaga'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final String nama = "Candra Julius Sinaga Sangat Ganteng Sekali Di Dunia Programmer";

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 150,
          height: 50,
          child: Text(
            nama,
            softWrap: true,
            textAlign: TextAlign.justify,
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
