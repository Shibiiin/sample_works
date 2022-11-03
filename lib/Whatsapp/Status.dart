import 'package:flutter/material.dart';

class WStatus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     child:Column(
       children: [
         InkWell(
           onTap: (){},
           child: Container(
             margin: EdgeInsets.all(5),
             child: Column(
               children:  [

                const Card(
                   child: ListTile(title: Text('Recent Update', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                       subtitle:  Text('Tap to Upload Status '),
                       leading: CircleAvatar(backgroundImage: NetworkImage("https://files.seniorweb.nl/uploadedimages/wwwseniorwebnl/thema/tabletsmartphone/apps/tip(8)(1).png" ),),
                       trailing:Icon(Icons.add) ),
                 ),
/// recent update

                 Container(
                   height: 30,
                   width: 500,
                   color: Colors.grey.withOpacity(0.6),
                   child: const Text('Recent Update', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                 ),

               const  Card(
                   child: ListTile(title: Text('Mom', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                       subtitle:  Text('2 Minutes ago'),
                       leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                       ),),
                       ),
                 ),
                const Card(
                   child: ListTile(title: Text('Ali', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                       subtitle:  Text('1 hour ago'),
                       leading: CircleAvatar(backgroundImage: NetworkImage(""),),
                        ),
                 ),
                   const Card(
                   child: ListTile(title: Text('Thomas', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                       subtitle:  Text('1 hour ago'),
                       leading: CircleAvatar(backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/003/823/495/small/image-of-beautiful-cute-young-girls-smiling-and-happy-isolated-over-blue-background-space-to-copy-the-text-free-photo.jpg"),),
                       ),
                 ),
                 const Card(
                   child: ListTile(title: Text('Tom', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                     subtitle:  Text('2 hour ago'),
                     leading: CircleAvatar(backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/003/823/495/small/image-of-beautiful-cute-young-girls-smiling-and-happy-isolated-over-blue-background-space-to-copy-the-text-free-photo.jpg"),),
                   ),
                 ),
                 const Card(
                   child: ListTile(title: Text('Caty', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                     subtitle:  Text('4 hour ago'),
                     leading: CircleAvatar(backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/003/823/495/small/image-of-beautiful-cute-young-girls-smiling-and-happy-isolated-over-blue-background-space-to-copy-the-text-free-photo.jpg"),),
                   ),
                 ),
                 const Card(
                   child: ListTile(title: Text('Firzo', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                     subtitle:  Text('5 hour ago'),
                     leading: CircleAvatar(backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/003/823/495/small/image-of-beautiful-cute-young-girls-smiling-and-happy-isolated-over-blue-background-space-to-copy-the-text-free-photo.jpg"),),
                   ),
                 ),
                 const Card(
                   child: ListTile(title: Text('Lily', style: TextStyle(
                       fontSize: 25,fontFamily: 'Raleway'),),
                     subtitle:  Text('9 hour ago'),
                     leading: CircleAvatar(backgroundImage: NetworkImage(""),
                 ),
    ),
                 ),


               ],
             ),
           ),
         )
       ],
     )
   );
  }
  
}