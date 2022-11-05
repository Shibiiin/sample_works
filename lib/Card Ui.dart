import 'package:flutter/material.dart';

void main(){
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
    var products = 0;
    return Scaffold(

      appBar: AppBar(title: Text('Card Ui'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: .length,
                    itemBuilder: (BuildContext cntx, int index){}
                ),
              ))
            ],

          ),
        ],

        ),

      ),







    );
  }
}