import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dicee',
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DiceePage(),
    ),
  ));
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDicenum = 1;
  int rightDicenum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randemnum();
                });
              },
              child: Image.asset('images/dice$leftDicenum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randemnum();
                });
              },
              child: Image.asset('images/dice$rightDicenum.png'),
            ),
          ),
        ],
      ),
    );
  }

  void randemnum() {
    leftDicenum = Random().nextInt(6) + 1;
    rightDicenum = Random().nextInt(6) + 1;
  }
}
