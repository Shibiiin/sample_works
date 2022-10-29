import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/HomePage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Splash screen',
      home: MySplashpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySplashpage extends StatefulWidget {
  const MySplashpage({super.key});

  @override
  State<MySplashpage> createState() => _MySplashpageState();
}

class _MySplashpageState extends State<MySplashpage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://www.fairloungebar.com/wp-content/uploads/2018/07/bg-img-07-free-img-1.jpg",
                ))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/flu.png",
                color: Colors.white,
                alignment: Alignment.center,
                height: 400,
                width: 400,
              ),
              Image.asset(
                "assets/images/loading.png",
                color: Colors.white,
              ),
              const Text('Assignment',
                  style: TextStyle(fontSize: 45, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
