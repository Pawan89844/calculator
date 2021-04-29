import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var question = "0";
  var answer = "0";

  /* String _privateOutput = "0"; */
  /* double num1 = 0.0;
  double num2 = 0.0;
  String task = ""; */

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 140),
            child: Text(
              question,
              style: kCalculatorStyle,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Text(
              answer,
              style: kCalculatorAnswer,
            ),
          ),
          Expanded(child: Divider()),
          Column(
            children: [
              Row(
                children: [
                  calculatorButtonTopSymbols('AC'),
                  calculatorButtonTopSymbols('±'),
                  calculatorButtonTopSymbols('%'),
                  calculatorButtonSymbols('÷'),
                ],
              ),
              Row(
                children: [
                  calculatorButton('7'),
                  calculatorButton('8'),
                  calculatorButton('9'),
                  calculatorButtonSymbols('×'),
                ],
              ),
              Row(
                children: [
                  calculatorButton('4'),
                  calculatorButton('5'),
                  calculatorButton('6'),
                  calculatorButtonSymbols('-'),
                ],
              ),
              Row(
                children: [
                  calculatorButton('1'),
                  calculatorButton('2'),
                  calculatorButton('3'),
                  calculatorButtonSymbols('+'),
                ],
              ),
              Row(
                children: [
                  calculatorResetButton(Icons.arrow_back),
                  calculatorButton('0'),
                  calculatorButton('.'),
                  calculatorButtonSymbols('='),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget calculatorButton(String numberText) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          setState(() {
            if (question == "0") {
              question = numberText;
            } else {
              question += numberText;
            }
          });
        },
        padding: EdgeInsets.all(24),
        child: Text(
          numberText,
          style: kCalculatorStyle,
        ),
      ),
    );
  }

  Widget calculatorButtonSymbols(String text) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          setState(() {
            if (text == "÷" || text == "×" || text == "+" || text == "-") {
              print(question += text);
            } else if (text == "=") {
              Parser p = Parser();

              question = question.replaceAll("÷", "/");
              question = question.replaceAll("×", "*");
              question = question.replaceAll("±", "+-");

              ContextModel cm = ContextModel();
              Expression exp = p.parse(question);
              setState(() {
                print(
                    answer = exp.evaluate(EvaluationType.REAL, cm).toString());
              });
            }
          });
        },
        padding: EdgeInsets.all(24),
        child: Text(
          text,
          style: kCalculatorStyleSymbols,
        ),
      ),
    );
  }

  Widget calculatorButtonTopSymbols(String text) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          setState(() {
            if (text == "AC") {
              question = "0";
              answer = "0";
            } else if (text == "±" || text == "%") {
              question += text;
            }
          });
        },
        padding: EdgeInsets.all(24),
        child: Text(
          text,
          style: kCalculatorStyleSymbols1,
        ),
      ),
    );
  }

  Widget calculatorResetButton(IconData icon) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          setState(() {
            if (icon == Icons.arrow_back) {
              question = question.substring(0, question.length - 1);
            }
            if (question == "") {
              question = "0";
            }
          });
        },
        padding: EdgeInsets.all(24),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
