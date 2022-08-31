import 'package:flutter/material.dart';
import 'description_place.dart';
import 'godparent.dart';
import 'header_appbar.dart';

class PetProfile extends StatelessWidget{
  String name;

  PetProfile(this.name);
  @override
  Widget build(BuildContext context) {
    return Material(child:Stack(
      children: <Widget>[
        ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              DescriptionPlace(name),
              GodParent("android/assets/img/perfil.jpg", "Camila Arancibia"),
            ]
        ),
        HeaderAppBar()
      ],
    )
    );
  }
}