import 'package:flutter/material.dart';


class CardUi extends StatefulWidget {
  @override
  State<CardUi> createState() => _CardUiState();
}

class _CardUiState extends State<CardUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Card Ui'),
        centerTitle: true,
      ),
      body: Container(
        height: 200,
        width: 200,
        child: const ListTile(
          title: Card(
            color: Colors.red,
            elevation: 20.0,

          ),
          leading: Text('Icon'),
        ),
      ),


    );
  }
}