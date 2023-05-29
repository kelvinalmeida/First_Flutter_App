import 'package:flutter/material.dart';
import 'dart:math';

final randonNumbers = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imageRollDice = Random();
  var randonNum = randonNumbers.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      var numAnteior = randonNum;
      do {
        randonNum = randonNumbers.nextInt(6) + 1;
      } while (numAnteior == randonNum);
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      const Padding(
        padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: Text(
          'Clique em "Rodar o Dado" para jogar!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      Image.asset(
        'assets/img/dice-$randonNum.png',
        width: 200,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Rodar o Dado'))
    ]);
  }
}
