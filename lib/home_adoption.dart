import 'package:flutter/material.dart';

import 'adoption_list.dart';
import 'gradient_back.dart';

class HomeAdoption extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          GradientBack("Adopción"),
          AdoptionList()
        ]
    );
  }
  }
