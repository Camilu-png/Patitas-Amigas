import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main.dart';
import 'button_green.dart';

class DescriptionPlace extends StatelessWidget{

  String name;

  DescriptionPlace(this.name);
  @override
  Widget build(BuildContext context){
    final star  = Container(
      margin: const EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.pets,
        color: Palette.kToDark.shade200,
      ),
    );

    final notStar =
    Container(
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.pets,
        color: Color(0x592F9A3A),
      ),
    );

    final title =
    Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(
              left: 10.0,
              right: 20.0,
              bottom: 20.0
          ),
          child: Text(
            name,
            style: TextStyle(
              fontFamily: "Poppins",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        )
    );

    final size =
    Column(
      children: <Widget>[
        Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 15.0
                ),
                child: const Text(
                  "Tamaño    ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  star,
                  star,
                  star,
                  star,
                  notStar
                ],
              ),
            ]
        ),
      ]
    );

    final friendly =
    Column(
        children: <Widget>[
          Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      top: 5.0,
                      left: 10.0,
                      right: 20.0
                  ),
                  child: const Text(
                    "Hogareño",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    star,
                    star,
                    star,
                    star,
                    star
                  ],
                ),
              ]
          ),
        ]
    );
    final age =
    Column(
        children: <Widget>[
          Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    top: 5.0,
                      left: 10.0,
                      right: 20.0
                  ),
                  child: const Text(
                    "Edad         ",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    star,
                    star,
                    star,
                    notStar,
                    notStar
                  ],
                ),
              ]
          ),
        ]
    );

    final description =
        Container(
          margin: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0
          ),
          child: const Text(
            "Fue encontrado en cerro Placeres castrado, con una herida en la pata delantera y muchas pulgas. Después de una visita al veterinario y ya recuperado encontró hogar en Viña del Mar.",
            style: TextStyle(
              fontFamily: "Poppins",
                fontSize: 16.0,
            ),
          ),
        );

    final titleStars =
    Container(
      margin: const EdgeInsets.only(
          top: 350.0,
          left: 10.0,
          right: 20.0
      ),
      child: Material(
        child:Column(
            children: <Widget>[
              title,
              size,
              friendly,
              age,
              description,
              ButtonGreen("Adoptar "),
            ]
        ),
      ),
    );

    return titleStars;
  }
}