import 'package:flutter/material.dart';
import 'package:reservasion/models/kulllanici.dart';
import 'package:reservasion/validator/kullanici_validator.dart';

class KisiKayit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KisiKayitState();
  }
}

class _KisiKayitState extends State with KullaniciValidationMixin {
  var kullanici = Kullanici.withoutInfo();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Üye Ol"),
          backgroundColor: Colors.pinkAccent.shade400,
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Ad",
                      prefixIcon: Icon(Icons.account_circle),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown.shade600),
                          borderRadius: BorderRadius.circular(16))),
                  validator: validateAd,
                  onSaved: (String value) {
                    kullanici.Ad = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Soyad",
                      prefixIcon: Icon(Icons.account_circle),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown.shade600),
                          borderRadius: BorderRadius.circular(16))),
                  validator: validateSoyad,
                  onSaved: (String value) {
                    kullanici.Soyad = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown.shade600),
                          borderRadius: BorderRadius.circular(16))),
                  onSaved: (String value) {
                    kullanici.email = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Telefon Numarası",
                      prefixIcon: Icon(Icons.add_ic_call_sharp),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown.shade600),
                          borderRadius: BorderRadius.circular(16))),
                  validator: validateTelefonNo,
                  onSaved: (String value) {
                    kullanici.TelefonNo = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Şifre",
                      prefixIcon: Icon(Icons.vpn_key_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown.shade600),
                          borderRadius: BorderRadius.circular(16))),
                  validator: validateSifre,
                  onSaved: (String value) {
                    kullanici.Sifre = value;
                  },
                ),
                kaydetButton(),
              ],
            ),
          ),
        ));
  }

  Widget kaydetButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.pinkAccent.shade400,
      ),
      child: Text("Kaydet"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }
}
