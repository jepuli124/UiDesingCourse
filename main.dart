/*
void main() {
  Calculamator calcEmpty = new Calculamator.empty();
  print(calcEmpty.sums(1, 2));
  // Discussion: Why does this need toString? (type safety!!)
  print('Summing: ' + calcEmpty.sums(1, 2).toString());

  Calculamator calcPrev = new Calculamator(42);
  print(calcPrev.previousResult);
}

class Calculamator {
  // We can set default values right here
  double previousResult = 0;

  // Or set things here in the constructor
  Calculamator(this.previousResult);

  // Allow constructing without previous values
  Calculamator.empty();

  double sums(double val1, double val2) {
    return val1 + val2;
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
          title: Text('Lunch Cards'),
        ),
        body: LunchCard('Kebab', 'Student Union House'),
      ),
    );
  }
}

class LunchCard extends StatelessWidget {
  // Content vars
  final String lunchName;
  final String lunchText;

  LunchCard(this.lunchName, this.lunchText);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      // See available icons at https://material.io/resources/icons/
      leading: Icon(Icons.fastfood),
      title: Text(lunchName),
      subtitle: Text(lunchText),
    ));
  }
}

}




import 'package:flutter/material.dart';

// Program initiates at main and executes the app
void main() => runApp(SampleLayoutApp());

// The main app, as it is
class SampleLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          // See https://api.flutter.dev/flutter/material/Colors-class.html
          // primaryColor: Colors.lightBlue[800],
          primaryColor: Colors.lightGreen[600],
          accentColor: Colors.blueGrey[100],

          // Define the default font family.
          // fontFamily: 'Georgia',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      title: 'Sample layout app',
      // See https://api.flutter.dev/flutter/material/Scaffold-class.html
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lunch Cards'),
        ),
        body: CardColumn(),
      ),
    );
  }
}


// A custom class, specifying a column of cards
// See all available widgets and their functions at
// https://flutter.dev/docs/development/ui/widgets/material
class CardColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/widgets/Column-class.html
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      LunchCard('Kebab', 'Available at student union'),
      LunchCard('Soup', 'Available at main building'),
      LunchCard('Salad', 'Available at student union'),
    ]);
  }
}

class LunchCard extends StatelessWidget {
  // Content vars
  final String lunchName;
  final String lunchText;

  LunchCard(this.lunchName, this.lunchText);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).accentColor,
        child: ListTile(
          // See available icons at https://material.io/resources/icons/
          leading: Icon(Icons.fastfood),
          title: Text(lunchName),
          subtitle: Text(lunchText),
        ));
  }
}










import 'package:flutter/material.dart';

// Program initiates at main and executes the app
void main() => runApp(SampleLayoutApp());

// The main app,as it is
class SampleLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          // See https://api.flutter.dev/flutter/material/Colors-class.html
          // primaryColor: Colors.lightBlue[800],
          primaryColor: Colors.lightGreen[600],
          accentColor: Colors.amber[800],

          // Define the default font family.
          // fontFamily: 'Georgia',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      title: 'Sample layout app',
      // See https://api.flutter.dev/flutter/material/Scaffold-class.html
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lunch Cards'),
        ),
        body: CardColumn(),
      ),
    );
  }
}

// A custom class, specifying a column of cards
// See all available widgets and their functions at
// https://flutter.dev/docs/development/ui/widgets/material
class CardColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/widgets/Column-class.html
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      LunchCard('Kebab', 'Available at student union'),
      LunchCard('Soup', 'Available at main building'),
      LunchCard('Salad', 'Available at student union'),
    ]);
  }
}

// See https://flutter.dev/docs/development/ui/interactive
class LunchCard extends StatefulWidget {
  LunchCard(this.lunchName, this.lunchText);
  // Content vars
  final String lunchName;
  final String lunchText;

  @override
  _LunchCardState createState() =>
      _LunchCardState(this.lunchName, this.lunchText);
}

class _LunchCardState extends State<LunchCard> {
  // Content vars
  String lunchName;
  String lunchText;
  bool _isFavorited = false;

  _LunchCardState(this.lunchName, this.lunchText);

  void _toggleFavorite() {
    // See https://api.flutter.dev/flutter/widgets/State/setState.html
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blueGrey[100],
        child: ListTile(
          // See available icons at https://material.io/resources/icons/
          leading: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Theme.of(context).accentColor,
            onPressed: _toggleFavorite,
          ),
          title: Text(lunchName),
          subtitle: Text(lunchText),
        ));
  }
}


 */

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
        body: Text('calculator'),
      ),
    );
  }
}
