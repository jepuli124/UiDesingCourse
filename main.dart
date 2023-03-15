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