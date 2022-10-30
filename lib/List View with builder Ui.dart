import 'package:flutter/material.dart';

class ListUi extends StatefulWidget{
  @override
  State<ListUi> createState()=> _ListUiState();

}

class _ListUiState  extends State <ListUi>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //     appBar:  PreferredSize(
  //       preferredSize: const Size.fromHeight(80),
  // child: AppBar(    automaticallyImplyLeading: false,
  // title:const Text("List View", style: TextStyle(fontSize: 35),
  //       ),
  //   centerTitle: true,
  // ),
  //     ),
      appBar: AppBar(backgroundColor: Colors.red,
        title: const Text("List View", style: TextStyle(fontSize: 35),),
        centerTitle: true,
      ),
      body: ListView(

        children: [

        ],
      ),
    );

  }
}