import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.cyan,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon((Icons.favorite_border_rounded)),

          )

        ],
        bottom: PreferredSize(

            preferredSize: Size(100, 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Text('Type your Location',
                    style: TextStyle(color: Colors.white, fontSize: 18,),),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Kochi, Kerala',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                )
              ],
            )

        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 2, right: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Categery(iconData: Icons.hotel,
                  catname: 'Hotel',
                  bgcolor: Colors.pink,),
                Categery(iconData: Icons.restaurant,
                  catname: 'Restaurant',
                  bgcolor: Colors.blueAccent,),
                Categery(iconData: Icons.local_cafe,
                  catname: 'Cafe',
                  bgcolor: Colors.orange,),


              ],
            ),
          ),
          SizedBox(height: 3,),
          Padding(
            padding: EdgeInsets.only(left: 2, right: 2),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg'))
                          ),
                        ),
                        Positioned(
                            right: 4,
                            top: 4,
                            child: Icon(Icons.star_border, color: Colors
                                .white,)),
                        Positioned(
                            right: 1,
                            bottom: 3,
                            child: Container(
                              color: Colors.white70,
                              height: 4,
                              width: 4,
                              child: Center(child: Text('\$40')),
                            )
                        )


                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          Text('Awesome room near Kochi', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          Text('Kochi, Kerala', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Text('  (220 reviews)',
                                style: TextStyle(color: Colors.grey),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Categery extends StatelessWidget {
  final Color bgcolor;
  final String catname;
  final IconData iconData;

  Categery(
      {required this.iconData, required this.catname, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.white,),
            Text(catname, style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}