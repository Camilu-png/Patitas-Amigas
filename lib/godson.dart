import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main.dart';

class GodSon extends StatelessWidget{

  String pathImage;
  String name;
  String city;
  String extra;
  String gender;

  GodSon(this.pathImage, this.name, this.city, this.extra, this.gender);
  @override
  Widget build(BuildContext context){
    final picture = Container(
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0)),
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
      ),
    );

    final female  = Container(
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.female,
        color: Color(0xFFD6777F),
      ),
    );
    final male  = Container(
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.male,
        color: Palette.kToDark.shade100,
      ),
    );
    
    final description = Container(
      height: 50.0,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
        color: Colors.white,
        ),
      child: Row(
        children: [
          Text(
              name,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16.0,
            ),
          ),
          Spacer(),
          Text(
              city,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 15.0,
            ),
          ),
          gender == "macho" ? male : female,
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0,4.0)
          )
        ],
      ),
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        bottom: 20.0
      ),

      child: Column(
        children: <Widget>[
          picture,
          description
        ],
      ),
    );
  }
}