import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibm_calculator/Icon_content.dart';
import 'package:ibm_calculator/Resuable_card.dart';

//Constantes
const bottomContainerHeight = 75.0;
const corAtivada = Color(0xFF1D1E33);
const buttonColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);
const String title = "CALCULADORA DE IMC";
//Enum
enum Gender { male, female }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender selecterGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text(
            "GÊNERO",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selecterGender = Gender.male;
                      });
                    },
                    child: ResuableCode(
                      color: selecterGender == Gender.male
                          ? corAtivada
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.male,
                        text: "Masculino",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selecterGender = Gender.female;
                      });
                    },
                    child: ResuableCode(
                      color: selecterGender == Gender.male
                          ? inactiveCardColor
                          : corAtivada,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.female,
                        text: "Feminino",
                      ),
                    ),
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
