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

  var images = [
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Grid View Stack'),),
body: Stack(
  children: [
    GridView.builder(
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 200,
        crossAxisSpacing: 30,
      ),
      itemBuilder: (context, index) {
        return Image.network(images[index]);
      },
      padding: const EdgeInsets.all(25),
      shrinkWrap: true,
    ),
    Positioned(
      height: 50,
        width: double.infinity,
      child: Container(
      color: Colors.red,
        padding: EdgeInsets.all(20),
        child: const Text(('Scenery'),style: TextStyle(fontSize: 10),),
    ),
    ),
  ],
),

   );
  }

}