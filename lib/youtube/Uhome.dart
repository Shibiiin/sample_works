import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Uhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UhomeState();
}

class _UhomeState extends State<Uhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            height: kToolbarHeight + 30,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.red),
                        backgroundColor: Colors.red,
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.youtube,
                        size: 30,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Youtube',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  FontAwesomeIcons.chromecast,
                  size: 30,
                ),
                const SizedBox(width: 15),
                const Icon(
                  FontAwesomeIcons.bell,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  FontAwesomeIcons.search,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://pixlr.com/images/index/remove-bg.webp",
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('All'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Movies'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Trending'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Live'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Comedy'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Music'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Videos'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Motorcycle'),
                ),
                ),
                Padding(padding: EdgeInsets.only(right: 10),
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text('Gadgets'),
                ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                'https://media.cnn.com/api/v1/images/stellar/prod/221204141517-04-world-cup-tuesday-preview.jpg?c=16x9&q=h_270,w_480,c_fill',
              ),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children:  [
                 Center(
              child:
                Icon(Icons.play_circle_outline_rounded, size: 100, color: Colors.white.withOpacity(0.6),),),
                Positioned(
                    right: 15,
                    bottom: 10,
                    child:
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Colors.black,
                      ),
                      child:
                   const Text(
                      '12:35',
                      style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ],
            ),
          ),
          Container(
          color: Colors.black45,
               child: const ListTile(
            title: Text('Ronaldo all goals',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                 trailing: Icon(FontAwesomeIcons.ellipsisVertical),
                 leading: CircleAvatar(
                   backgroundImage: (
                   NetworkImage('https://pixlr.com/images/index/remove-bg.webp')
                   ),
                 ),
                 subtitle: Text('Tom - 2.12M views - 10 months ago'),

          )),
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                'https://i.ytimg.com/vi/3jgH5weXYwA/maxresdefault.jpg',
              ),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children:  [
                Center(
                  child:
                  Icon(Icons.play_circle_outline_rounded, size: 100, color: Colors.white.withOpacity(0.6),),),
                Positioned(
                    right: 15,
                    bottom: 10,
                    child:
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Colors.black,
                      ),
                      child:
                   const Text(
                      '50:35',
                      style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ],
            ),
          ),
           Container(
          color: Colors.black45,
               child: const ListTile(
            title: Text('Top Songs 2022 ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                 trailing: Icon(FontAwesomeIcons.ellipsisVertical),
                 leading: CircleAvatar(
                   backgroundImage: (
                   NetworkImage('https://pixlr.com/images/index/remove-bg.webp')
                   ),
                 ),
                 subtitle: Text('Tom - 2.12M views - 10 months ago'),

          )),
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                'https://media.cnn.com/api/v1/images/stellar/prod/221204141517-04-world-cup-tuesday-preview.jpg?c=16x9&q=h_270,w_480,c_fill',
              ),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children:  [
                Center(
                  child:
                  Icon(Icons.play_circle_outline_rounded, size: 100, color: Colors.white.withOpacity(0.6),),),
                Positioned(
                    right: 15,
                    bottom: 10,
                    child:
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Colors.black,
                      ),
                      child:
                   const Text(
                      '12:35',
                      style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ],
            ),
          ),
           Container(
          color: Colors.black45,
               child: const ListTile(
            title: Text('Ronaldo all goals',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                 trailing: Icon(FontAwesomeIcons.ellipsisVertical),
                 leading: CircleAvatar(
                   backgroundImage: (
                   NetworkImage('https://pixlr.com/images/index/remove-bg.webp')
                   ),
                 ),
                 subtitle: Text('Tom - 2.12M views - 10 months ago'),

          )),
        ],
      ),
      )
    );
  }
}
