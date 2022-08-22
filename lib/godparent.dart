import 'package:flutter/material.dart';

class GodParent extends StatelessWidget{
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

    final name = Container(
        margin: const EdgeInsets.only(
            left: 20.0,
            right: 15.0
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
              "Camilú",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15.0,
                fontWeight: FontWeight.w600
            ),
          ),
          Row(
            children: const <Widget>[
              Text("5 ahijados"),
              Text("1 activo")
            ],
          )
        ],
      )
    );
    return Row(
      children: <Widget>[
        avatar,
        name
      ],
    );
  }
}