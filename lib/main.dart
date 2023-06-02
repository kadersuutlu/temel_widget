import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  String mesaj = "First Flutter App";
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["Engin", "Kerem", "Berkay", "Murat"];
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: ogrenciler.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(ogrenciler[index]);
                  })),
          Center(
              child: ElevatedButton(
            child: Text("Sonuc"),
            onPressed: () {
              var mesaj=sinavHesapla(55);
              mesajGoster(context,mesaj);
            },
          ))
        ],
      ),
    );
  }

  String sinavHesapla(int puan) {
    String mesaj = "";
    if (puan >= 50) {
      mesaj = "Geçti";
    } else if (puan >= 40) {
      mesaj = "Büte kaldı";
    } else {
      mesaj = "Kaldı";
    }
    return mesaj;
  }

  void mesajGoster(BuildContext context,String mesaj) {
    var alert = AlertDialog(
      title: Text("Sınav Sonucu"),
      content: Text(mesaj),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
