import "dart:math";
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[800],
          appBar: AppBar(
            centerTitle: true,
            title: Text("Ask Me Anithing"),
            backgroundColor: Colors.grey[700],
          ),
          body: magic(),
        ),
      ),
    );

class magic extends StatefulWidget {
  @override
  _magicState createState() => _magicState();
}

class _magicState extends State<magic> {
  int ballNumber = 1;

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () { changeBallNumber(); },
            child: Image.asset("images/ball$ballNumber.png"),
          )),
        ],
      ),
    );
  }
}
