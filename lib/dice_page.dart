import 'package:flutter/material.dart';
import 'dart:math';


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 3;
  int rightDiceNumber = 5;
  int count = 0;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: leftDiceNumber == 6 && rightDiceNumber == 6
                  ? const Text(
                      'You Won',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const Text('')),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              'Click : $count',
              style: const TextStyle(
                fontSize: 38.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    );
  }
}