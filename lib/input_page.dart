import 'package:flutter/material.dart';

//Constantes
const bottomContainerHeight = 75.0;
const corAtivada = Color(0xFF1D1E33);
const buttonColor = Color(0xFFEB1555);
//

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA DE IMC"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCode(
                    color: corAtivada,
                    cardChild: Column(
                      children: [
                        Icon(size: 80.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "MASCULINO",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCode(
                    color: corAtivada,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ResuableCode(
            color: corAtivada,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ResuableCode(
                  color: corAtivada,
                )),
                Expanded(
                  child: ResuableCode(color: corAtivada),
                ),
              ],
            ),
          ),
          Container(
            color: buttonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

//Widget - Container De Atividades
class ResuableCode extends StatelessWidget {
  //Contrutor
  //@required - Obrigatorio
  ResuableCode({@required this.color, this.cardChild});
  //Cor No Selector
  //A cor e imutavel, apos setar a cor, nao podemos setar novamente
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      //Borda
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
