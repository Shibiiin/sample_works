import 'package:flutter/material.dart';
import 'package:flutter_assignment/Whatsapp/Status.dart';

import 'Chat.dart';
import 'call.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {

  int selectindex = 0;

  List bodys =  <Widget>[
   const WChat(),
    WStatus(),
     WCall(),
  ];



void onitemtapped(int index){
  setState(() {
    selectindex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
        ],
        currentIndex: selectindex,
        onTap: onitemtapped,
      ),
      body: Column(
        children: [
          Container(
            child: bodys.elementAt(selectindex),
          )
        ],

      ),
    );
  }
}
