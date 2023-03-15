import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Calculator'),
            centerTitle: true,
            backgroundColor: Colors.lime),
        //AppBar

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MyTextWindow(),
            MyRow(
              value1: '1',
              value2: '2',
              value3: '3',
              value4: '+',
              updateTextWindow: (value) {
                setState(() {
                  _textWindowValue += value;
                });
              },
              textWindowValue: _textWindowValue, // pass the _textWindowValue here
            ),
            MyRow(
              value1: '4',
              value2: '5',
              value3: '6',
              value4: '-',
              updateTextWindow: (value) {
                setState(() {
                  _textWindowValue += value;
                });
              },
              textWindowValue: _textWindowValue, // pass the _textWindowValue here
            ),
            MyRow(
              value1: '7',
              value2: '8',
              value3: '9',
              value4: '=',
              updateTextWindow: (value) {
                setState(() {
                  _textWindowValue += value;
                });
              },
              textWindowValue: _textWindowValue, // pass the _textWindowValue here
            ),
          ],
        ),
      ), //Scaffold
    )); //MaterialApp


class MyButton extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;
  
  const MyButton({required this.value, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          minimumSize: const Size(100, 100),
        ),//buttonstyle
        child: Text(value),
      ),//FlatButton
    );//Center
  }
} 

class MyRow extends StatelessWidget {
  final String value1, value2, value3, value4;
  final Function(String) updateTextWindow;
  final String textWindowValue;

  const MyRow({
    required this.value1,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.updateTextWindow,
    required this.textWindowValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MyButton(
            value: value1, onPressed: () => updateTextWindow(textWindowValue + value1)),
        MyButton(
            value: value2, onPressed: () => updateTextWindow(textWindowValue + value2)),
        MyButton(
            value: value3, onPressed: () => updateTextWindow(textWindowValue + value3)),
        MySpecialButton(value: value4, onPressed: () => updateTextWindow(textWindowValue + value4)),
      ],
    );
  }
}

class MyTextWindow extends StatefulWidget {  
  const MyTextWindow();
  @override
  _MyTextWindowState createState() => _MyTextWindowState();
} 

class _MyTextWindowState extends State<MyTextWindow> {
  String _textWindowValue = '';

  void addValue(String value) {
    setState(() {
      _textWindowValue += value;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _textWindowValue += '1';
        });
      },
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),//border
        ),//Boxdecoration
        child: Text(_textWindowValue),//text
      ),//container
    );
  }
}

class MySpecialButton extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;
  
  const MySpecialButton({required this.value, required this.onPressed,});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 50),
        ),//buttonstyle
        child: Text(value),
    );//TextButton
  }
}
