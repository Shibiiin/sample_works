import 'package:flutter/material.dart';


class ContactUi extends StatefulWidget{
  @override
  State<ContactUi> createState()=> _ContactUiState();

}

class _ContactUiState  extends State <ContactUi>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      //     appBar:  PreferredSize(
      //       preferredSize: const Size.fromHeight(80),
      // child: AppBar(    automaticallyImplyLeading: false,
      // title:const Text("List View", style: TextStyle(fontSize: 35),
      //       ),
      //   centerTitle: true,
      // ),
      //     ),
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text("Contact Card", style: TextStyle(fontSize: 35),),
        centerTitle: true,
      ),
      body: ListView(
        children:  [

          const SizedBox(height: 10,),
            const Card(
            child: ListTile(title: Text('Emily', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
              subtitle: const Text('8794561230'),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
              ),),
              trailing:Icon(Icons.call) ),
          ),
          const SizedBox(height: 10,),
          Card(
            child: ListTile(title:const Text('Jack', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
                subtitle: const Text('8794561230'),
                leading: Image.asset("assets/images/icon.png",),
                trailing:Icon(Icons.call) ),
          ),

          const SizedBox(height: 10,),
          const Card(
            child: ListTile(title: Text('Emi', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
                subtitle: const Text('8794561230'),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                ),),
                trailing:Icon(Icons.call) ),
          ),
          const SizedBox(height: 10,),
          Card(
            child: ListTile(title:const Text('Richard Son', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
                subtitle: const Text('1655465'),
                leading: Image.asset("assets/images/icon.png",),
                trailing:Icon(Icons.call) ),
          ),
          const SizedBox(height: 10,),
          Card(
            child: ListTile(title:const Text('Shibin', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
                subtitle: const Text('47894465'),
                leading: Image.asset("assets/images/icon.png",),
                trailing:Icon(Icons.call) ),
          ),

          const SizedBox(height: 10,),
          const Card(
            child: ListTile(title: Text('Christina', style: TextStyle(
                fontSize: 25,fontFamily: 'Raleway'),),
                subtitle: const Text('4563216502'),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                ),),
                trailing:Icon(Icons.call) ),
          ),

        ],
      ),
    );

  }
  }