import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main.dart';

class DescriptionPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final star  = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.pets,
        color: Palette.kToDark.shade200,
      ),
    );

    final not_star =
    Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.pets,
        color: Color(0x592F9A3A),
      ),
    );

    final name =
    Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 20.0
          ),
          child: Text(
            "Vaquita",
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
                margin: EdgeInsets.only(
                    left: 20.0,
                    right: 15.0
                ),
                child: Text(
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
                  not_star
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
                  margin: EdgeInsets.only(
                      top: 5.0,
                      left: 20.0,
                      right: 20.0
                  ),
                  child: Text(
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
                  margin: EdgeInsets.only(
                    top: 5.0,
                      left: 20.0,
                      right: 20.0
                  ),
                  child: Text(
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
                    not_star,
                    not_star
                  ],
                ),
              ]
          ),
        ]
    );

    final description =
        Container(
          margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            "Fue encontrado en cerro Placeres castrado, con una herida en la pata delantera y muchas pulgas. Después de una visita al veterinario y ya recuperado encontró hogar en Viña del Mar.",
            style: TextStyle(
              fontFamily: "Poppins",
                fontSize: 16.0,
            ),
          ),
        );

    final title_stars =
    Container(
      margin: EdgeInsets.only(
          top: 320.0,
          left: 20.0,
          right: 20.0
      ),
      child: Column(
          children: <Widget>[
            name,
          size,
            friendly,
            age,
            description
        ]
      ),
    );

    return title_stars;
  }
}