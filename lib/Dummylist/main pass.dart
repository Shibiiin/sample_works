import 'package:flutter/material.dart';
import 'package:flutter_assignment/Dummylist/product%20list%20screen.dart';

import 'Single products.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: ProductList(),
     routes: {
       "single-product": (context)=> const SingleProductScreen(),
  },
   );

  }

}