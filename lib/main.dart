import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftBtn = 1;
  int rightBtn = 1;
  void press() {
    setState(() {
      leftBtn = Random().nextInt(6) + 1;
      rightBtn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dice App'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    press();
                    print('Left is pressed $leftBtn');
                  },
                  child: Image.asset('images/dice_$leftBtn.jpg'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    press();
                    print('Right is pressed $rightBtn');
                  },
                  child: Image.asset('images/dice_$rightBtn.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
