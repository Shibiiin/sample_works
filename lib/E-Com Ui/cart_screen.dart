import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      // body: Body(),
      // bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Column(
        children: const [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          //Text(
          //   "${demoCarts.length} items",
          //   style: Theme.of(context).textTheme.caption,
          //),
        ],
      ),
    );
  }
}