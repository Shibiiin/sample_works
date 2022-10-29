import 'package:flutter/material.dart';
import 'package:flutter_assignment/Login%20Page.dart';
import 'package:flutter_assignment/Sign%20up%20page.dart';


class HomePage extends StatelessWidget{

  var formkey = GlobalKey<FormState>();
  bool viewvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
        children: [
         const Padding(padding: EdgeInsets.only(top: 100, left: 45),
         child: Text('Hello There !',
          style: TextStyle(fontSize: 60, fontFamily: 'Raleway',color: Colors.blue,
          fontWeight: FontWeight.bold),textAlign: TextAlign.center,
         ),
         ),
          const Padding(padding: EdgeInsets.only(top: 10, left: 20, bottom: 75),
           child: Text('Automatic identity verification which enable you to verify your identity',
          style: TextStyle(
            fontFamily: 'Fasthand',
            fontWeight: FontWeight.w500, fontSize: 15
          ),),
    ),
          Image.asset(
              "assets/images/fluttericon.png",
          alignment: Alignment.center,
          height: 100,
          width: 100,
          ),
         Padding(padding: const EdgeInsets.only(top: 90, right: 50, left: 50),
         child: ElevatedButton(onPressed: (){
           final isValid = formkey.currentState!.validate();
           if (isValid){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
           }
         }, child: Text('Login'),
          style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(15.0))
        )
         )
         )
         ),Padding(padding: const EdgeInsets.only(top: 20, right: 50, left: 50),
         child: ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
         }, child: Text('Sign Up'),
         style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(15.0))
        )
         )
         )
         ),
        ],
        ),
      ),
    );
  }

}