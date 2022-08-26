import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main.dart';

class GradientBack extends StatelessWidget{
  String title;

  GradientBack(this.title);
  @override
  Widget build(BuildContext context){
    return Container(
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
      child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
            fontSize: 25.0,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
      ),
      ),
      alignment: Alignment(-0.9, -0.6),

    );
  }
}