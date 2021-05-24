import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Candra Julius Sinaga"),
          backgroundColor: Colors.red,
          leading: Icon(Icons.home),
        ),
        body: Container(
          // Menggunakan Column Karena Ada Dua Objek Yang Ingin Dipisahkan
          // Pertama adalah header beserta summarynya dan yang kedua adalah history
          child: Column(
            children: <Widget>[
              // Kita menggunakan Stack untuk mengatur position header serta container untuk summarynya
              Stack(children: <Widget>[
                backgroundHeader(),
                summaryCash(),
              ]),
              // Bagian ini akan menampilkan history pengeluaran
              cardDetail('Bonus', 'Dapat', '500.000', 'in'),
              cardDetail('Beli Baju', 'Baju Kemeja Kantor', '250.000', 'out'),
            ],
          ),
        ),
      ),
    );
  }
}

// Membuat Card Untuk History Pengeluaran
Widget cardDetail(title, description, price, type) {}

// Membuat Container Untuk Summary Pengeluaran dan Pemasukan
Widget summaryCash() {}

// Untuk membuat header
Widget backgroundHeader() {
  // Kita buat Container Dengan Tinggi sebesar 300,dan lebar sejauh yang bisa dijangkau
  // BoxDecorationnya kita set warna pinkaccent dan pada bagian bawah kiri-kanan
  // dibuat Lengkungan
  return Container(
    height: 300,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    // Adapun Child Dari Container Diatas Kita Atur Posisinya menggunakan padding
    child: Padding(
      // Paddingnya Di set hanya untuk top dan left
      padding: const EdgeInsets.only(top: 60, left: 20),
      // Karena kita akan menampilkan lebihd dari 1 objek susun kebawah
      // Maka kita menggunakan Column
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Bagian ini normal hanya menampilkan teks dan style
          Text(
            "Candra Julius Sinaga",
            style: new TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "082311558341",
            style: new TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

/*
Kesimpulannya
Card adalah sebuah widget yang menjadi membentuk kartu
Image.network() = adalah mengambil gambar dari internet
*/
