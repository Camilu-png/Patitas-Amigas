import 'package:flutter/material.dart';

import 'godson.dart';

class AdoptionList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 105.0,
          left: 10.0,
          right: 20.0
      ),
      child: ListView(
          children: <Widget>[
            GodSon("android/assets/img/pose.jpg", "Vaquita", "Viña del Mar", "esterilizado", "hembra"),
            GodSon("android/assets/img/luther.jpg", "Luther", "Valparaíso", "esterilizado", "macho"),
            GodSon("android/assets/img/rayo.jpg", "Rayo", "Villa Alemana", "esterilizado", "macho"),
          ]
      ),
    );
  }
}