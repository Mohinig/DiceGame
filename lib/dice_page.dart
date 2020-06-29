import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenum = 1;
  int rightDicenum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDicenum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDicenum.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDicenum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDicenum.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
