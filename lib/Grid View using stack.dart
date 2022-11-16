import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridV(),
  ));
}

class GridV extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GridVState();
}


class _GridVState extends State<GridV> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Grid View', style: TextStyle(fontSize: 30),
       ),
       centerTitle: true,
     ),
   body: GridView(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,

   ),
     children: [
       Stack(
         children:  [
           Image.network(
             "https://i.natgeofe.com/k/42e832f5-fd48-43ff-b338-091bdf4048ca/india-tajmahal_16x9.jpg?w=1200",
             height: 200,
             width: 200,
             fit: BoxFit.contain,
           ),
           const Positioned(
             bottom: 50,
             child: Text('India', style: TextStyle(
                 fontSize: 40,fontWeight: FontWeight.bold,
                 color: Colors.white),),
           ),
         ],
       ),
       Stack(
         children:  [
           Image.network(
             "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/6a/ff/2a/caption.jpg?w=700&h=500&s=1&cx=7014&cy=3760&chk=v1_14690e40614ca9b48b73",
             height: 200,
             width: 200,
             fit: BoxFit.contain,
           ),
           const Positioned(
             bottom: 40,
             child: Text('Dubai', style: TextStyle(
                 fontSize: 40,fontWeight: FontWeight.bold,
                 color: Colors.white),),
           ),
         ],
       ),
       Stack(
         children:  [
           ClipRRect(
             borderRadius: BorderRadius.circular(60),
           child: Image.network(
             "https://cdn.londonandpartners.com/-/media/images/london/visit/campaigns/international-recovery-campaign/lets-do-london-related-international-640.jpeg?mw=640&hash=477E6FF9F31F292EE017E5BA63027C7054EB39A0",
             height: 200,
             width: 200,
             fit: BoxFit.contain,
           ),),
           const Positioned(
             bottom: 50,
             child: Text('London', style: TextStyle(
                 fontSize: 40,fontWeight: FontWeight.bold,
                 color: Colors.white),),
           ),
         ],
       ),
       Stack(
         children:  [
           Image.network(
             "https://i.natgeofe.com/n/93231b5d-3b4f-4bd6-bcf4-4172ebda2011/parliment-square-london-england_3x2.jpg",
             height: 200,
             width: 200,
             fit: BoxFit.contain,
           ),
           const Positioned(
             bottom: 50,
             child: Text('Paris', style: TextStyle(
                 fontSize: 40,fontWeight: FontWeight.bold,
                 color: Colors.white),),
           ),
         ],
       ),




     ],
   ),
   );
  }
}

