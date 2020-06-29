import 'package:dice_game/dice_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DicePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
