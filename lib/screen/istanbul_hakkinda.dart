import 'package:flutter/material.dart';

class IstanbulRestoranHakkinda extends StatefulWidget {
  @override
  _IstanbulRestoranHakkindaState createState() =>
      _IstanbulRestoranHakkindaState();
}

class _IstanbulRestoranHakkindaState extends State<IstanbulRestoranHakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade400,
        title: Text("Restoran Detay"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Mutfak Türü: Steak, Deniz Ürünleri\nOrtalama Fiyat (Tek Kişi): 75 TL\n Altenatifler: Kahvaltı, Öğlen Menüsü, Vale, Full bar, Maç Yayını, Dış Mekan, Wifi, Kokteyl Servisi, Vegan Seçennekler, Sigara İçme Alanı, Brunch, Masa Oyunları, İç-Dış Mekan, Glutensiz Yemek Seçeneği, Tatlı\nÖdeme Seçenekleri: Nakit ve Kredi Kartı\nİletişim: e-mail= last_ottoman@gmail.com , Telefon= 999 555 222 33",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
