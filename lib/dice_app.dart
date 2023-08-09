import 'package:flutter/material.dart';

import 'dice_page.dart';

class DiceApp extends StatelessWidget{
  const DiceApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Dicee App",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: const DicePage(),
      ),
    );
  }
}