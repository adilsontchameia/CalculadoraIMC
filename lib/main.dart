import 'package:flutter/material.dart';
import 'package:ibm_calculator/input_page.dart';
import 'results_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      //Rotas Nomeadas
      routes: {'/': (context) => Home(), '/result': (context) => ResultPage()},
      debugShowCheckedModeBanner: false,
      //Especificar tudo que quero mudar
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
