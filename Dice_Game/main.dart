import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      )
    )
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int left_dice_no=1;
  int right_dice_no=1;

  void changeFace()
  {
    setState(() {
      left_dice_no = Random().nextInt(6)+1;
      right_dice_no = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                    changeFace();
                },
                child: Image(
                  image: AssetImage('images/D$left_dice_no.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                 changeFace();
                },
                child: Image(
                  image: AssetImage('images/D$right_dice_no.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}