import 'package:flutter/material.dart';
import 'package:flutter_assignment/youtube/library.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Uhome.dart';
import 'explore.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home:  const Youtube(title: 'Youtube'),
    );
  }
}

class Youtube extends StatefulWidget {
  const Youtube({super.key, required this.title});

  final String title;

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {

  int selectindex = 0;

  List screens = <Widget>[
    Uhome(),
    const explore(),
    lib(),


  ];

  void onitemtapped(int index){
    setState(() {
      selectindex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    Future.delayed(const Duration(seconds: 30));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, items: const [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscription'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Account'),
      ],
        currentIndex: selectindex,
        onTap: onitemtapped,
      ),


      body:
          Container(
            child: screens.elementAt(selectindex),
      )
     
    );
  }
}