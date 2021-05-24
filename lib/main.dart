import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerPhone = new TextEditingController();

  void ambilData() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
            height: 200,
            child: Column(padding: EdgeInsets.all(10), children: [
              new Text(
                "Nama Lengkap: " + controllerNama.text,
                style: new TextStyle(color: Colors.red, fontSize: 15),
              ),
              new Text(
                "Password: " + controllerPassword.text,
                style: new TextStyle(color: Colors.blue, fontSize: 15),
              ),
              new Text(
                "Nomor Handphone: " + controllerPhone,
                style: new TextStyle(color: Colors.black, fontSize: 15),
              ),
              new Text("Belajar: " + nilaiCheckBox.toString())
            ])),
        actions: [
          FlatButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]);
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Candra Julius Sinaga"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: controllerNama,
                    maxLength: 10,
                    decoration: new InputDecoration(
                      hintText: "contoh: Susilo Bambang",
                      labelText: "Nama Lengkap",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLength: 8,
                    controller: controllerPassword,
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: controllerPhone,
                    maxLength: 12,
                    keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                      hintText: "contoh: 12345679010",
                      labelText: "Nomor Telepon",
                      icon: Icon(Icons.phone),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Nama telepon tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                CheckboxListTile(
                  title: Text('Belajar Dasar Flutter'),
                  subtitle: Text('Dart, widget, http'),
                  value: nilaiCheckBox,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (value) {
                    setState(() {
                      nilaiCheckBox = value;
                    });
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      return;
                    }
                    ambilData();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
Kesimpulannya
Card adalah sebuah widget yang menjadi membentuk kartu
Image.network() = adalah mengambil gambar dari internet
*/
