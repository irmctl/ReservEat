import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reservasion/screen/kullanici_kayit.dart';
import 'package:reservasion/screen/sehirler.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ada.png"),
                      fit: BoxFit.contain)),
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown.shade600),
                              borderRadius: BorderRadius.circular(16)),
                          labelText: 'E-Mail',
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown.shade600),
                              borderRadius: BorderRadius.circular(16)),
                          border: OutlineInputBorder(),
                          labelText: 'Şifre',
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: 50, left: 50, top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent.shade400),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sehirler()));
                    },
                    child: Text("Giriş"),
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(
                    right: 50,
                    left: 50,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent.shade400),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KisiKayit()));
                    },
                    child: Text(
                      "Üye ol",
                    ),
                  ),
                ))
              ],
            )
          ],
        ));
  }
}
