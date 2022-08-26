import 'package:flutter/material.dart';

import 'godson.dart';

class HomeAdoption extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          GodSon("android/assets/img/pose.jpg", "Vaquita", "Viña del Mar", "esterilizado", "hembra"),
          GodSon("android/assets/img/luther.jpg", "Luther", "Valparaíso", "esterilizado", "macho"),
          GodSon("android/assets/img/rayo.jpg", "Rayo", "Villa Alemana", "esterilizado", "macho"),
          GodSon("android/assets/img/pose.jpg", "Vaquita", "2", "esterilizado", "macho"),
          GodSon("android/assets/img/pose.jpg", "Vaquita", "2", "esterilizado", "macho"),
        ]
    );
  }
  }
