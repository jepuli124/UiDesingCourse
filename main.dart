import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Calculator'),
      centerTitle: true,
      backgroundColor: Colors.lime
    ), //AppBar
    
    body: MyCalculatorBody(),
  ),//Scaffold
));//MaterialApp

class MyCalculatorBody extends StatefulWidget {
  @override
  MyCalculatorBodyState createState() => MyCalculatorBodyState();
}

class MyCalculatorBodyState extends State<MyCalculatorBody> {
  int result = 0;
  String operation = '';
  int number1 = 0;
  int number2 = 0;

  void handleNumberPress(int number) {
    setState(() {
      if (number1 == 0) {
        number1 = number;
        result = number;
      } else if (number1 != 0 && number2 != 0) {
        number1 = number2;
        number2 = number;
        result = number;
      } else {
        number2 = number;
        result = number;
      }
    });
  }

  void handleOperationPress(String newOperation) {
    setState(() {
      if (newOperation == '+') {
        operation = '+';
      } else if (newOperation == '-'){
        operation = '-';
      }
    });
  }

  void handleEqualsPress() {
    setState(() {
      if (operation == '+')  {
        result = performOperation(number1, number2, '+');
      } if (operation == '-')  {
        result = performOperation(number1, number2, '-');
      }
    });
  }

  int performOperation(int number1, int number2, String operation) {
    switch (operation) {
      case '+':
        return number1 + number2;
      case '-':
        return number1 - number2;
      default:
        throw ArgumentError('Invalid operation: $operation');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
        alignment: Alignment.centerLeft,
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
           ),//border
        ),//Boxdecoration
        child: Text(
          result.toString(),
          style: const TextStyle(fontSize: 24),
          ),//text
        ),//container
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(1);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '1',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(2);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '2',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(3);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '3',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center,
            ElevatedButton(
              onPressed: () {
                handleOperationPress('+');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
              ),//buttonstyle
              child: const Text(
                '+',
                style: TextStyle(fontSize: 24),
              ),
              ),//TextButton
          ], //Widgets
        ),//Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(4);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '4',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(5);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '5',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(6);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '6',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            ElevatedButton(
              onPressed: () {
                handleOperationPress('-');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
              ),//buttonstyle
              child: const Text(
                '-',
                style: TextStyle(fontSize: 24),
              ),
              ),//TextButton
          ], //Widgets
        ),//Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(7);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '7',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(8);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '8',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  handleNumberPress(9);
                },//functionality
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(100, 100),
              ),//buttonstyle
              child: const Text(
                 '9',
                 style: TextStyle(fontSize: 24),
              ),
              ),//FlatButton
             ),//Center
            ElevatedButton(
              onPressed: () {
                handleEqualsPress();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
              ),//buttonstyle
              child: const Text(
                '=',
                style: TextStyle(fontSize: 24),
              ),
              ),//TextButton
          ], //Widgets
        ),//Row
      ], //Widgets
    );//column
  }
} 