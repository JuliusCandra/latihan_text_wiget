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
  String _jk = "";

  void _pilihJk() {
    setState(() {
      _jk = value;
    });
  }

  final _formKey = GlobalKey<FormState>();
  bool nilaiCheckBox = false;

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerPhone = new TextEditingController();

  void _submitData() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Konfirmasi"),
              content: Text(
                controllerNama.text + '\n' + controllerPassword.text + '\n' + controllerPhone.text,
              ),
              actions: [
                FlatButton(
                    color: Colors.red,
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.home), title: Text("Candra Julius Sinaga"), centerTitle: true),
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
                      hintText: "contoh: Candra Julius Sinaga",
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
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new RadioListTile(
                  value: "Laki-Laki",
                  title: new Text("laki-laki"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.blue,
                  subtitle: new Text("pilih ini jika anda laki-laki"),
                ),
                new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.blue,
                  subtitle: new Text("Pilih ini jika anda perempuan"),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    _submitData();
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
