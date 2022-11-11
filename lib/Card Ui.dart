import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardUi(),
  ));
}

class CardUi extends StatefulWidget {
  @override
  State<CardUi> createState() => _CardUiState();
}

class _CardUiState extends State<CardUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Ui'),
        centerTitle: true,
      ),
      body: Row(
        children: [
Column(
  children: [
    Container(
      color: Colors.red,
    ),
  ],
),
          Row(
            children: [
              Container(
                color: Colors.blue,
              ),
            ],
          ),
    ],
      ),
    );
  }
}
