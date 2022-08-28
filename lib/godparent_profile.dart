import 'package:flutter/material.dart';

import 'description_place.dart';
import 'godparent.dart';
import 'main.dart';

class GodparentProfile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final title = const Text(
      "Perfil",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25.0,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    );

    final banner = Container(
      margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundImage: AssetImage("android/assets/img/perfil.jpg")
          ),
          Spacer(),
          Column(
            children: [
              Text(
                "Camila Arancibia",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "Poppins",
                ),
              ),
              Text(
                "camila.arancibiaf@sansano.usm.cl",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          )
        ],
      ),
    );

    final header = Container(
        padding: const EdgeInsets.only(
            left: 10.0,
            right: 20.0
        ),
        height: 250.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Palette.kToDark.shade300,
                  Palette.kToDark.shade100
                ],
                begin: FractionalOffset(0.5, 0.0),
                end: FractionalOffset(1.0, 1.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )
        ),
        child: Column(
            children: [
              title,
              banner
            ]
        )
    );

    return Stack(
      children: <Widget>[
        ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              DescriptionPlace(),
              GodParent("android/assets/img/perfil.jpg", "Camila Arancibia"),
            ]
        ),
        header
      ],
    );
  }
}