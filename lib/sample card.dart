import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        backgroundColor: Colors.green,
      ),
      body:Column(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Container(
               color: Colors.red,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
              color: Colors.black,),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
                color: Colors.blue
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
              color: Colors.green,),
            ],
          ),

        ],
      )

    ),
  )
  );
}