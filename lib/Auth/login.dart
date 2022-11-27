import 'package:flutter/material.dart';
import 'package:flutter_assignment/Login%20Page.dart';
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
      return Container(
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/id/1089592832/vector/studio-room-blurred-background-soft-gradient-pastel-with-lighting-well-use-as-business.jpg?s=612x612&w=0&k=20&c=nm5mtV7RsQvvcRIIcbZkhxqOwK0sVIjbIjnNVd2ORew=',
              )
          ),
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
          ],
        ),
      );
    }
  }
