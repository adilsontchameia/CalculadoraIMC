import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibm_calculator/Icon_content.dart';
import 'package:ibm_calculator/Resuable_card.dart';
import 'constants.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: ResuableCode(
                    onPressed: () {
                      setState(() {
                        selecterGender = Gender.male;
                      });
                    },
                    color: selecterGender == Gender.male
                        ? corAtivada
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      text: "MASCULINO",
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCode(
                    onPressed: () {
                      setState(() {
                        selecterGender = Gender.female;
                      });
                    },
                    color: selecterGender == Gender.male
                        ? inactiveCardColor
                        : corAtivada,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.female,
                      text: "FEMININO",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ResuableCode(
            color: corAtivada,
            cardChild: Column(
              children: [
                Text(
                  "ALTURA",
                  style: labelTextStyle,
                ),
                Row(
                  children: [
                    Text("120", style: sliderText),
                    Text("cm"),
                  ],
                )
              ],
            ),
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
