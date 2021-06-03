import 'package:flutter/material.dart';

class IzmirRestoranlar extends StatefulWidget {
  @override
  _IzmirRestoranlarState createState() => _IzmirRestoranlarState();
}

class _IzmirRestoranlarState extends State<IzmirRestoranlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.pinkAccent.shade400,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("RESTORANLAR",
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
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 150,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child: Text(
              "Kordon Yengeç Restaurant",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
      ),
    ];
  }
}
