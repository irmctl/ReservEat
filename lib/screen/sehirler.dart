import 'package:flutter/material.dart';
import 'package:reservasion/screen/ankara_restoran.dart';
import 'package:reservasion/screen/antalya_restoran.dart';
import 'package:reservasion/screen/istanbul_restoran.dart';
import 'package:reservasion/screen/izmir_restoran.dart';
import 'package:reservasion/screen/mersin_restoran.dart';

import '../main_drawer.dart';

class Sehirler extends StatefulWidget {
  @override
  _SehirlerState createState() => _SehirlerState();
}

class _SehirlerState extends State<Sehirler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Menu()),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
            backgroundColor: Colors.pinkAccent.shade400,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("ŞEHİRLER",
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              centerTitle: true,
              background: Image.network(
                "https://image.freepik.com/free-vector/silhouette-skyline-illustration_53876-78787.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(ListeElemanlari()))
        ],
      ),
    );
  }

  List<Widget> ListeElemanlari() {
    return [
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => IstanbulRestoranlar()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child: Text(
              "İstanbul",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnkaraRestoranlar()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.grey.shade400,
            alignment: Alignment.center,
            child: Text(
              "Ankara",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MersinRestoranlar()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.grey.shade600,
            alignment: Alignment.center,
            child: Text(
              "Mersin",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => IzmirRestoranlar()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.blueGrey,
            alignment: Alignment.center,
            child: Text(
              "İzmir",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AntalyaRestoranlar()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.black38,
            alignment: Alignment.center,
            child: Text(
              "Antalya",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
    ];
  }
}
