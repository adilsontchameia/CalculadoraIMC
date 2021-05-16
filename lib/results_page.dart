import 'package:flutter/material.dart';
import 'file:///media/adilsonchameia/380ebb70-e1ce-49a4-a173-cb807e826f29/adilsonchameia/Projetos/cursoAngela/ibm_calculator/componentes/buttom.dart';
import 'package:ibm_calculator/constants.dart';

import 'Resuable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: titleResult,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCode(
              color: corAtivada,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: resultText,
                  ),
                  Text(
                    '18.3',
                    style: bmiText,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more.',
                    style: bodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
