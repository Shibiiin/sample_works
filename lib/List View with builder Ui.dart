import 'package:flutter/material.dart';

class ListUi extends StatefulWidget{
  @override
  State<ListUi> createState()=> _ListUiState();

}

class _ListUiState  extends State <ListUi>{
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
        title: const Text("Movie", style: TextStyle(fontSize: 35),),
        centerTitle: true,
      ),
      body: ListView(
        children:  [
          const SizedBox(height: 20,),
         const  Card(
           child: ListTile(title: Text('Avatar', style: TextStyle(
               fontSize: 35,fontFamily: 'Raleway'),),
           subtitle: Text('Action,Thriller,Drama'),
           leading: CircleAvatar(backgroundImage: NetworkImage(""
               "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_FMjpg_UX1000_.jpg"
           ),),
             trailing: Text('2009',style: TextStyle(fontSize: 15,color: Colors.black),),
           ),
           ),
          const SizedBox(height: 20,),
Card(
child: ListTile(
  title:   Container(
    child: const Text('Marvel',
    style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
  ),subtitle:const Text('Action, Drama, Thriller'),
  leading: const CircleAvatar(backgroundImage: NetworkImage(""
      "https://assets.vogue.in/photos/5ce412599cc0c0b8f5f9b4bf/16:9/w_1920,h_1080,c_limit/Everything-you-need-to-know-before-watching-Marvel-movies-this-year.jpg"),),
trailing:const Text('2017', style: TextStyle(fontSize: 15,color: Colors.black),),
),

),
          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('CBI',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Crime, Drama, Family'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(""
                  "https://m.media-amazon.com/images/M/MV5BZDZhZjA2YjYtYTM0ZS00YmE0LWI3NDItMzg0ZDhiN2ZhZjZhXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg"
              ),),
              trailing:const Text('2015', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),

          ),
          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('Black Adam',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Action, Drama, Thriller'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/M/MV5BYzZkOGUwMzMtMTgyNS00YjFlLTg5NzYtZTE3Y2E5YTA5NWIyXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg"         ),),
              trailing: const Text('2022', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),
          ),
          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('Batman',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Action, Drama, Thriller'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(""
                  "https://cdn.britannica.com/49/127649-050-31417AF3/Heath-Ledger-Joker-Christian-Bale-The-Dark-Knight-2008.jpg"),),
              trailing: const Text('2016', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),
          ),
          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('Mayanadhi',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Romantic, Drama'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(""
                  "https://upload.wikimedia.org/wikipedia/en/e/e6/Mayaanadhi_film_poster.jpg"),),
              trailing: Text('2016', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),
          ),

          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('GoT',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Drama, Thriller'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(""
                  "https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg"),),
              trailing: Text('2011', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),
          ),

          const SizedBox(height: 20,),
          Card(
            child: ListTile(
              title:   Container(
                child: const Text('Loki',
                  style: TextStyle(fontSize: 35,fontFamily: 'Raleway'),),
              ),subtitle:const Text('Drama, Thriller'),
              leading: const CircleAvatar(backgroundImage: NetworkImage(""
                  "https://hips.hearstapps.com/hmg-prod/images/is-loki-alive-1618935098.jpeg")),
              trailing: Text('2021', style: TextStyle(fontSize: 15,color: Colors.black),),
            ),
          ),

        ],
      ),
    );

  }
}