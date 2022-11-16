import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/E-Com%20Ui/special_offers.dart';
import 'dart:html';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {

  const Body({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 10),
           // DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: 30),
          //  PopularProducts(),
            SizedBox(height:30),

              ],
        ),
      ),
    );
  }
}