import 'package:flutter/material.dart';

class GodParent extends StatelessWidget{

  String pathImage;
  String name;

  GodParent(this.pathImage, this.name);
  @override
  Widget build(BuildContext context){
    final avatar = Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.only(
          top: 10,
          left: 10
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage("android/assets/img/perfil.jpg")
      ),
    );

    final userName = Container(
        margin: const EdgeInsets.only(
            left: 20.0,
            right: 15.0
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              name,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15.0,
                fontWeight: FontWeight.w600
            ),
          ),
          Row(
            children: const <Widget>[
              Text(
                  "5 ahijados ",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 11.0,
                    fontWeight: FontWeight.w100
                ),
              ),
              Text(
                  "- 1 activo",
                  style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 11.0,
                  fontWeight: FontWeight.w100
              ),
              )
            ],
          )
        ],
      )
    );
    final godParent = Row(
      children: <Widget>[
        avatar,
        userName
      ],
    );

    return Container(
        margin: const EdgeInsets.only(
        left: 20.0,
        right: 15.0
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
        "Padrinos",
        style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15.0,
            fontWeight: FontWeight.w600
        ),
      ),
          godParent
        ]
      )
    );
  }
}