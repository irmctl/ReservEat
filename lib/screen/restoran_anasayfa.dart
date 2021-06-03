import 'package:flutter/material.dart';
import 'package:reservasion/main_drawer.dart';
import 'package:reservasion/screen/istanbul_hakkinda.dart';
import 'package:reservasion/screen/mersin_restoran.dart';

class RestoranAnasayfa extends StatefulWidget {
  @override
  _RestoranAnasayfaState createState() => _RestoranAnasayfaState();
}

class _RestoranAnasayfaState extends State<RestoranAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Menu()),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.pinkAccent.shade400,
        title: Text("Restoran Anasayfa"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 15,
        mainAxisSpacing: 25,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IstanbulRestoranHakkinda()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "RESTORAN DETAY",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MersinRestoranlar()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "KROKİ",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MersinRestoranlar()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "KONUM",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MersinRestoranlar()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "MENÜ",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MersinRestoranlar()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "PUAN/YORUM",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MersinRestoranlar()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade100,
              child: Text(
                "FOTOĞRAF",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
