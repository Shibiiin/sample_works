import 'package:flutter/material.dart';
import 'package:flutter_assignment/Auth/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Animi(),
  ));
}

class Animi extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _AnimiState();
}

class _AnimiState extends State<Animi> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            'https://media.istockphoto.com/id/175400834/photo/blue-wall-texture.jpg?b=1&s=170667a&w=0&k=20&c=jUGB82E0z1Fk0Zd5nZzUbKIcTxnu0MRxOc8jMHemlKc=',
          ),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black26,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: kToolbarHeight + 30,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Welcome to Login Page \n Signup new user',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
              Padding(padding: EdgeInsets.only(bottom: 100),
              child: Container(
                height: 70,
              width: double.infinity,
              color: Colors.white60,
              child:
                 Image.asset('assets/images/icon.png'),
            ),),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            formVisible=true;
                            _formsIndex=1;
                          });
                        }, child: Text('Login'),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            formVisible=true;
                            _formsIndex=2;
                          });
                        },
                        child: const Text('SignUp'),
                      )),
                      SizedBox(height: 10,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children:[
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white38,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(
                          color: Colors.red,
                        )
                    ),
                    onPressed: () {

                    },
                    icon:const Icon(FontAwesomeIcons.google, color: Colors.red,),
                    label:const Text('Continue With Google',style: TextStyle(color: Colors.black)),
                  ),
                    SizedBox(width: 10,),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white38,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                              color: Colors.red,
                            )
                        ),
                        onPressed: () {

                        },
                        icon:const Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                        label:const Text('Continue With Facebook', style: TextStyle(color: Colors.black),),
                      ),
                  ],
                  ),
                      ],
              ),
        ),
            AnimatedSwitcher(duration:Duration(milliseconds: 150),
            child: (!formVisible)
                ?null:Container(
              color: Colors.black45,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: _formsIndex == 1
              ? Colors.blue
                : Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ), onPressed: () {
                setState(() {
                  _formsIndex=1;
                });
              }, child: Text(
                'Login',style:
                TextStyle(color: _formsIndex==1
                ?Colors.white:Colors.black),
              )),
                      const SizedBox(width: 10,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: _formsIndex==2
                                ? Colors.blue:Colors.red,
                          ),
                          onPressed: (){
                        setState(() {
                          _formsIndex=2;
                        });
                      }, child: Text('SignUp', style: TextStyle
                        (
                        color: _formsIndex==2
                            ?Colors.white:Colors.black,),
                      )),
                      IconButton(onPressed: (){
                        setState(() {
                          formVisible=false;
                        });
                      },
                          color: Colors.white,
                          icon: Icon(Icons.clear)),
                    ],
                  ),
                  Container(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      child: _formsIndex==1?  LogIn(): SignupForm(),
                    ),
                  )
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}
