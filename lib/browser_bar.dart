import 'package:flutter/material.dart';
import 'package:platzi_trips_app/godparent.dart';
import 'package:platzi_trips_app/main.dart';
import 'home_adoption.dart';
import 'godparent_profile.dart';

class BrowserBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _BrowserBar();
  }
}

class _BrowserBar extends State<BrowserBar>{
  int indexTap = 0;
  final List<Widget> widgetsChildren =[
    HomeAdoption(),
    GodparentProfile(),
  ];
  void onTapTapped(int index){
    setState((){
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Palette.kToDark.shade200
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
              )
            ]
        ),
      ),
    );
  }
  
}