import 'dart:math';

import 'package:flutter/material.dart';

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Dicee',style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 20 , right: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only( bottom: 30),
              child: Text('Its your chance!',style: TextStyle(color: Colors.black,fontSize: 25,fontStyle: FontStyle.italic),),
            ),
            Row(
              children: <Widget>[
               Expanded(child:  Image.asset('images/dice$leftDiceNumber.png'),),
          Padding(padding: EdgeInsets.only(left: 15)),
          Expanded(child:  Image.asset('images/dice$rightDiceNumber.png'),),
            ],
            ),
            Padding(padding: EdgeInsets.only(top: 70)),
            Container(
              height: 70,
              width: 500,
              color: Colors.black,
              child:  FlatButton(
            onPressed: ()
                  {
                    setState(() {
                      leftDiceNumber=Random().nextInt(6)+1;
                      rightDiceNumber=Random().nextInt(6)+1;
                    });
                  },
         child: Text('Roll the dice',style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),),
         ),
            ),
          ],
        )
      ),
      );
}
}