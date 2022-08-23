import 'package:flutter/material.dart';
import 'card_image.dart';
import 'floating_action_button_pink.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 350.0,
      child: Stack(
        alignment: Alignment(0.69,1.0),
        children: <Widget>[
          ListView(
            padding: EdgeInsets.all(25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[

              CardImage("android/assets/img/pose.jpg"),
              CardImage("android/assets/img/Vaquita.jpg"),
              CardImage("android/assets/img/VaquitaSeguimiento.jpg"),
            ],
          ),
          FloatingActionButtonPink(),
        ],
      ),


    );
  }
}