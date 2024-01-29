import 'package:flutter/material.dart';

import 'model/burc.dart';

class Detay extends StatelessWidget {
  final Burc burcdetayi;
  Detay({super.key, required this.burcdetayi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                burcdetayi.burcadi + " Burcu ve Özellikleri",
                style: TextStyle(fontSize: 18),
              ),
              centerTitle: true,
              background: Image.asset(
                  "assets/images/" + burcdetayi.burcbuyukresim,
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                burcdetayi.burcdetay,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
