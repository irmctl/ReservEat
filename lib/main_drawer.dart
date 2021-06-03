import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "RezervEat",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent.shade400,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profil'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Favoriler"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
          ListTile(
            leading: Icon(Icons.backspace_outlined),
            title: Text('Çıkış'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(
            color: Colors.purple,
            height: 0,
            indent: 10,
          ),
        ],
      ),
    );
  }
}
