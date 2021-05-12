import 'package:flutter/material.dart';

//Widget - Container De Atividades
class ResuableCode extends StatelessWidget {
  //Contrutor
  //@required - Obrigatorio
  ResuableCode({@required this.color, this.cardChild, this.onPressed});
  //Cor No Selector
  //A cor e imutavel, apos setar a cor, nao podemos setar novamente
  final Color color;
  final Widget cardChild;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        //Borda
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
