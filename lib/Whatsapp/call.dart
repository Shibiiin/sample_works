import 'package:flutter/material.dart';

class WCall extends StatelessWidget {
  const WCall({super.key});



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
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Tom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_made_outlined),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Tom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_received),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Mom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_made),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.emmys.com/sites/default/files/shows/mom-2016-600x600.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Mom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_missed),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.emmys.com/sites/default/files/shows/mom-2016-600x600.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Mom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_missed),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                " https://www.emmys.com/sites/default/files/shows/mom-2016-600x600.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Tom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_received),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:15),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Tom',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_missed),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),
                    SizedBox(height:10),
                    Card(
                      child: ListTile(
                          title: Text(
                            'Jerry',
                            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
                          ),
                          subtitle: Icon(Icons.call_missed),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                          ),
                          trailing: Icon(Icons.call)),
                    ),



                  ],
                ),
              ),
            )
          ],
        ));
  }
}
