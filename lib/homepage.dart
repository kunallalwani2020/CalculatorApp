import 'package:calculator/Mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var inputUser = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        inputUser.toString(),
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(height:14,),
                    Text(
                      answer.toString(),
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Mybutton(
                        title: 'AC',
                        onPress: () {
                          inputUser = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '=/-',
                        onPress: () {
                          inputUser += "+/-";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '%',
                        onPress: () {
                          inputUser += "%";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '/',
                        onPress: () {
                          inputUser += "/";
                          setState(() {});
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybutton(
                        title: '7',
                        onPress: () {
                          inputUser += "7";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '8',
                        onPress: () {
                          inputUser += "8";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '9',
                        onPress: () {
                          inputUser += "9";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: 'x',
                        onPress: () {
                          inputUser += "x";
                          setState(() {});
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybutton(
                        title: '6',
                        onPress: () {
                          inputUser += "6";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '5',
                        onPress: () {
                          inputUser += "5";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '4',
                        onPress: () {
                          inputUser += "4";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '-',
                        onPress: () {
                          inputUser += "-";
                          setState(() {});
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybutton(
                        title: '3',
                        onPress: () {
                          inputUser += "3";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '2',
                        onPress: () {
                          inputUser += "2";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '1',
                        onPress: () {
                          inputUser += "1";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '+',
                        onPress: () {
                          inputUser += "+";
                          setState(() {});
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybutton(
                        title: '0',
                        onPress: () {
                          inputUser += "0";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '.',
                        onPress: () {
                          inputUser += ".";
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: 'Del',
                        onPress: () {
                          inputUser =
                              inputUser.substring(0, inputUser.length - 1);
                          setState(() {});
                        },
                      ),
                      Mybutton(
                        title: '=',
                        onPress: () {
                          equalPress();
                          setState(() {});
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void equalPress() {
    var userinput = inputUser.replaceAll('x', '*');
    Parser p = Parser();

    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
