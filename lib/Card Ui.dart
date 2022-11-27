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
     body: Container(
               child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
               Padding(padding: EdgeInsets.all(50),
               child:
               Container(
                 height: 50,
                 width: 100,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.red
                 ),
                 child: Row(
                   children: [
                     Icon(Icons.home,size: 30,),
                  Text('Hi',style: TextStyle(fontSize: 30),),
                 ],
               ),
               ),
               ),
           Padding(padding: EdgeInsets.all(50),
             child:
             Container(
               height: 50,
               width: 100,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.red
               ),
               child: Row(
                 children: [
                   Icon(Icons.home,size: 30,),
                   Text('Hi',style: TextStyle(fontSize: 30),),
                 ],
               ),
             ),
           ),
               Padding(padding: EdgeInsets.all(15),
               child:Row(
                 children: [
                   Text('Hello')
                 ],
               ),
               )

             ],
               ),

       ),
    );
  }
}
