import 'package:flutter/material.dart';

class CardUi extends StatefulWidget{
  @override
  State<CardUi> createState() => _CardUiState();
}

class _CardUiState extends State <CardUi>{
  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  title: const Text('Card View'),
),
body: ListView(
  children: [


  ],
),
);

  }
}