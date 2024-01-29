import 'package:flutter/material.dart';
import 'package:udemy_ilkproje_burc/detay_kismi.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenecekburc;
  const BurcItem(this.listelenecekburc, {super.key});
  @override
  Widget build(BuildContext context) {
    var mytextstyle = Theme.of(context).textTheme;
    return Card(
      shadowColor: Colors.black,
      margin: EdgeInsets.all(10),
      elevation: 15,
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detay(burcdetayi: listelenecekburc),
              ));
        },
        title: Text(
          listelenecekburc.burcadi,
          style: mytextstyle.headlineSmall,
        ),
        subtitle: Text(
          listelenecekburc.burctarih,
          style: mytextstyle.titleMedium,
        ),
        leading:
            Image.asset("assets/images/" + listelenecekburc.burckucukresim),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
