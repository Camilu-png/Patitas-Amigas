import 'package:flutter/material.dart';

class FloatingActionButtonPink extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonPink();
  }
}

class _FloatingActionButtonPink extends State<FloatingActionButtonPink>{
  bool _pressed = false;

  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: this._pressed ? Text("Añadido a favoritos") : Text("Eliminado de favoritos"),
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFFD6777F),
      tooltip: "Adoptar",
      onPressed: onPressedFav,
      child: Icon(
          this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}