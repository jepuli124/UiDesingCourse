import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Calculator'),
      centerTitle: true,
      backgroundColor: Colors.lime
    ), //AppBar
    
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        MyTextWindow(result: '0'),
        MyRow(value1: '1', value2: '2',value3: '3', value4: '+'),
        MyRow(value1: '4', value2: '5',value3: '6', value4: '-'),
        MyRow(value1: '7', value2: '8',value3: '9', value4: '='),
      ], //Widgets
    ),//column
  ),//Scaffold
));//MaterialApp


class MyButton extends StatelessWidget {
  final String value;

  const MyButton({required this.value});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
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

  const MyRow({required this.value1,required this.value2,required this.value3,required this.value4});  
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MyButton(value: value1),
        MyButton(value: value2),
        MyButton(value: value3),
        MySpecialButton(value: value4),
      ], //Widgets
    );//Row
  }
} 

class MyTextWindow extends StatelessWidget {  
  final String result;
  
  const MyTextWindow({required this.result});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),//border
      ),//Boxdecoration
      child: Text(result),//text
    );//container
  }
} 

class MySpecialButton extends StatelessWidget {
  final String value;
  
  const MySpecialButton({required this.value});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 50),
        ),//buttonstyle
        child: Text(value),
    );//TextButton
  }
} 
