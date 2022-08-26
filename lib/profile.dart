import 'package:flutter/material.dart';

import 'description_place.dart';
import 'godparent.dart';
import 'header_appbar.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
        HeaderAppBar()
      ],
    );
  }
}