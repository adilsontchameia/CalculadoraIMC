import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCode(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ResuableCode(
                    color: Color(0xFF1D1E33),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ResuableCode(
            color: Color(0xFF1D1E33),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ResuableCode(
                  color: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: ResuableCode(
                  color: Color(0xFF1D1E33),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResuableCode extends StatelessWidget {
  //Contrutor
  //@required - Obrigatorio
  ResuableCode({@required this.color});
  //Cor No Selector
  //A cor e imutavel, apos setar a cor, nao podemos setar novamente
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      //Borda
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
