import 'package:flutter/material.dart';

class WChat extends StatelessWidget {
  const WChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: const [
                Card(
                  child: ListTile(
                      title: Text(
                        'Tom',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                      ),
                      trailing: Text('20:20')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Thomas',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      ),
                      trailing: Text('Yesterday')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Shibin',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                      ),
                      trailing: Text('12:20')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Catty',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(""
                            "https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg"),
                      ),
                      trailing: Text('20:20')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Abel',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                      ),
                      trailing: Text('21/10/2022')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Gasper',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                      ),
                      trailing: Text('10:10')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Chacko',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                      ),
                      trailing: Text('15:47')),
                ),
                Card(
                  child: ListTile(
                      title: Text(
                        'Lara',
                        style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text('TYou Got a New Message '),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.slazzer.com/static/images/home-page/individual-image-upload.jpg"),
                      ),
                      trailing: Text('13:20')),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
