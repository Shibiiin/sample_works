import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel(),
  ));
}

class Hotel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/id/1050564510/photo/3d-rendering-beautiful-luxury-bedroom-suite-in-hotel-with-tv.jpg?s=612x612&w=0&k=20&c=ZYEso7dgPl889aYddhY2Fj3GOyuwqliHkbbT8pjl_iM=',
              ),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children: [
                const Padding(padding: EdgeInsets.only(top: 50),
                child:Align(alignment: Alignment.topCenter,
                  child:Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),),),
                Positioned(
                  bottom: 45,
                  left: 10,
                  child: Text(
                    'Leela Palace \n Noida, Delhi',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 20,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: const Text(
                      '4.5/5 reviews',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const Positioned(
                  right: 10,
                  bottom: 10,
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ListTile(
                title: Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.green,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.green,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.green,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.green,
                    ),
                    Icon(FontAwesomeIcons.starHalfStroke, color: Colors.green),
                  ],
                ),
                subtitle: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.locationPin,
                      size: 15,
                      color: Colors.red,
                    ),
                    Text('10km to Indian Gate'),
                  ],
                ),
                trailing: Column(
                  children: const <Widget>[
                    Text(
                      '\$ 200',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                    Text(
                      "/per night",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ],
                )),
          ),
          SizedBox(width: double.infinity,
          child:ElevatedButton(  style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
          ) ,
          ), onPressed: () {  },child: const Text("Book Now", style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white
          ),),
          ),
          ),
          SizedBox(height: 25,),
          Text("Description".toUpperCase(), style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.0
          ),),
          const SizedBox(height: 10.0),
      Padding(padding: EdgeInsets.all(10),
          child:
      Text(
            "The Leela Palace New Delhi Relish the sumptuous offerings that have led to this property’s ranking as Asia’s second Best City Hotel. From its design and decor, from gastronomy to hospitality, this magnificent, modern palace is a true reflection of the city’s multifaceted heritage. Its location mere minutes from the airport and Lutyens’ Delhi as well as its undertaking of the Suraksha initiative towards health and hygiene makes this 5-star hotel the ultimate choice for city explorers, history buffs and frequent fliers alike.",
            textAlign: TextAlign.justify, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15.0
          ),),),
          const SizedBox(height: 10.0),
          const Text(
            "Leela Palace Noida, Delhi", textAlign: TextAlign.justify, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0
          ),),
    SizedBox(height: 30),
    BottomNavigationBar(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: Colors.black,
    items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(
    icon: Icon(Icons.favorite_border),
    label: "Favorites"),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings), label: "Settings"),
    ],),
        ],
      ),
    );
  }
}
