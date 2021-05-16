import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //Construtor
  RoundIconButton({this.icon, this.onPressed});
  //Atributos
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
