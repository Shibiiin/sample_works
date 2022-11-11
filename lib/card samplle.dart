import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: w(),
  ));
}

class w extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample'),),
    body: Container(
      child: Column(
        children: [
          Container(
            color: Colors.red,
          ),
        ],
      ),
    ),

    );
  }

}