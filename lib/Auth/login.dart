import 'package:flutter/material.dart';
import 'package:flutter_assignment/Auth/signup.dart';
import 'package:flutter_assignment/e-com/BLog_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogIn extends StatefulWidget{
  const LogIn({super.key});


  @override
  State<StatefulWidget> createState()=> _LogInState();
  }

  var jstkey = GlobalKey<FormState>();
  bool viewvalue = true;

  class _LogInState extends State<LogIn> {

    @override
    Widget build(BuildContext context) {
      return  Container(
        height: 400,
        width: 300,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter email",
                border: OutlineInputBorder(),
              ),
              validator: (email) {
                if (email!.isEmpty || !email.contains('@')) {
                  return 'Enter a valid email';
                }
                else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: viewvalue,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                hintText: "Enter password",
                border: OutlineInputBorder(),
              ),
              validator: (password) {
                if (password!.length < 6 || password!.isEmpty) {
                  return 'Enter a Valid password';
                }
                else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),

              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                final isValid = jstkey.currentState!.validate();
                if (isValid) {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => BlogHomeOnePage()));
                }
                else {
                  Fluttertoast.showToast(
                    msg: 'Invalid Email/Password',
                    toastLength: Toast.LENGTH_LONG,
                    backgroundColor: Colors.red,
                    fontSize: 30,
                    textColor: Colors.white,
                    gravity: ToastGravity.TOP,
                  );
                }
              },
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupForm()));
            }, child: Text('New User? Click here to SignUp', style: TextStyle(
                color: Colors.black
            ),)),
          ],
        ),
      );
    }
  }
