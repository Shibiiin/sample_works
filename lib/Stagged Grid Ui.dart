import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stagg(),
  ));
}

class Stagg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _StaggState();

}

class _StaggState  extends State<Stagg>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
 appBar: AppBar(
   title: Text('Stagged Grid', style: TextStyle(fontSize: 30),),
   centerTitle: true,
 ),


   );
  }
}