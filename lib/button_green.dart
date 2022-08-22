import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main.dart';

class ButtonGreen extends StatelessWidget{
  String buttonText;

  ButtonGreen(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: const Text("Buscando . . ."),
            )
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
            top: 20.0,
            left: 10.0,
            right: 20.0,
          bottom: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Palette.kToDark.shade300,
                  Palette.kToDark.shade100
                ],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(1.0, 1.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp

            )

        ),

        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white,
            ),

          ),
        ),

      ),
    );
  }

}