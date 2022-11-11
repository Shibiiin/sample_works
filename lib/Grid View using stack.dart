import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridV(),
  ));
}

class GridV extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GridVState();
}


class _GridVState extends State<GridV> {
  List<GridVi> images= [
    GridVi(

    )

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Grid View', style: TextStyle(fontSize: 30),
       ),
       centerTitle: true,
     ),
     body: Container(
         padding: EdgeInsets.all(10),
         child: GridView.builder(
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
             mainAxisExtent: 150,
               crossAxisSpacing: 100,
             ),
             itemCount: images.length,
             itemBuilder: (context, index) {
               return  Image.network(images[index],

               );

             },
         ),
     ),

   );
  }
}

