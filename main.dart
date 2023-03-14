}
import 'package:flutter/material.dart';

// Program initiates at main and executes the app
void main() => runApp(SampleBasicApp());

// The main app, as it is
class SampleBasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Center(
          child: Column(
            mainAxisAligment: MainAxisAligment.Center,
            children:[
              button("1")
              Sizedbox(height: 8.0),
              button("2")
              Sizedbox(height: 8.0),
              button("3")
            ]
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget{
    final String name;

    const Button(this.name);

    @override
    Widget build(BuildContext context){
      return DecoratedBox{
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(name),
        ),
      }
    }
}