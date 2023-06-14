import 'package:flutter/material.dart';
import 'dart:math';
void main (){
  runApp( MaterialApp(
      home:Scaffold(
        body: DiceePage(),
        backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Center(child: Text("Dicee")),
    ),
  )));
}

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftdicee= 1;
  int rightdicee= 6;
  void changedicee(){
    setState(() {
      rightdicee=Random().nextInt(5)+1;
      leftdicee=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(onPressed:changedicee,child: Image.asset('images/dice$leftdicee.png'))),
          Expanded(child: TextButton(onPressed: changedicee,child: Image.asset('images/dice$rightdicee.png'))),
        ],
      ),
    );
  }
}
