import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:udemy_ilkproje_burc/Burc_item.dart';
import 'package:udemy_ilkproje_burc/strings.dart';

import 'model/burc.dart';

class Burclistesi extends StatelessWidget {
  late List<Burc> TumBurclar;
  Burclistesi() {
    TumBurclar = verikaynagihazirla();
    print(TumBurclar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Burçlar Listesi'), centerTitle: true),
        body: Center(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return BurcItem(TumBurclar[index]);
              },
              itemCount: TumBurclar.length),
        ));
  }

  Column kutucukolustur() {
    return Column(
      children: [
        Card(
          shadowColor: Colors.black,
          margin: EdgeInsets.all(10),
          elevation: 15,
          child: ListTile(
            onTap: () {},
            title: Text(''),
            subtitle: Text('Açıklama'),
            leading: CircleAvatar(child: Icon(Icons.add)),
          ),
        ),
      ],
    );
  }

  List<Burc> verikaynagihazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var isim = Strings.BURC_ADLARI[i];
      var tarih = Strings.BURC_TARIHLERI[i];
      var genelozellik = Strings.BURC_GENEL_OZELLIKLERI[i];
      var resim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var buyukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png';
      Burc eklenecekburc = Burc(isim, tarih, genelozellik, resim, buyukresim);
      gecici.add(eklenecekburc);
    }
    return gecici;
  }
}
