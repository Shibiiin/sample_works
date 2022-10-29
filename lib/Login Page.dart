import 'package:flutter/material.dart';
import 'package:flutter_assignment/List%20View%20with%20builder%20Ui.dart';
import 'package:flutter_assignment/Sign%20up%20page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

var formkey = GlobalKey<FormState>();
bool viewvalue = true;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 250, left: 150, right: 75),
                child: Text(
                  'Login',
                  style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 50, top: 10),
              child: Text(
                'Welcome back ! Login with your Credentials',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.70),
                    letterSpacing: 1.2),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 45, left: 35, bottom: 10),
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway"),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    contentPadding: const EdgeInsets.only(
                      top: 14.0,
                      bottom: 14.0,
                      left: 14.0,
                      right: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    )),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return 'Enter a Valid Email Id !';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35, left: 35, bottom: 10),
              child: Text(
                'Password',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                obscuringCharacter: "*",
                obscureText: viewvalue,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    contentPadding: const EdgeInsets.only(
                      top: 14.0,
                      bottom: 14.0,
                      left: 14.0,
                      right: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    )),
                validator: (password) {
                  if (password!.length < 6 || password!.isEmpty) {
                    return 'Enter a Valid Password !';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
              child: ElevatedButton(
                onPressed: () {
                  final isValid = formkey.currentState!.validate();
                  if (isValid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListUi()));
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Invalid Username/Password',
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.TOP,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 20.0);
                  }
                },
style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),
  shape:MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),

      )
  )
),
                child: const Text("Login"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 75, left: 75),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: const Text("Dont Have Account ? Sign up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
