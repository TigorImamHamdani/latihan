import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String changeValue = 'Reamur';

  var listItem = ["Kelvin", "Reamur"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konversi Suhu"),
        ),
        body: Container(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Masukkan Suhu Celcius",
                ),
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                      value: "Kelvin", child: Container(child: Text("Kelvin"))),
                  DropdownMenuItem(
                      value: "Reamur", child: Container(child: Text("Reamur"))),
                ],
                value: changeValue,
                onChanged: (changeValue) {},
              ),
              Padding(padding: EdgeInsets.all(15.0)),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Hasil",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "343.6",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      child: Text(
                        "Konversi Suhu",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {})),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                height: 100,
                child: Expanded(
                    child: ListView(
                  children: [
                    Text("Reamur"),
                    Text("Kelvin"),
                    Text("Reamur"),
                    Text("Reamur"),
                    Text("Kelvin"),
                    Text("Reamur"),
                    Text("Kelvin"),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}


