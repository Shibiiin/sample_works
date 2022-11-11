import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChckBoxx());
}

class ChckBoxx extends StatefulWidget {
  const ChckBoxx({super.key});

  @override
  State<StatefulWidget> createState() => _ChckBoxx();
}

class _ChckBoxx extends State<ChckBoxx> {
  bool Java = false;
  bool flutter = false;
  bool Oracle = false;
  bool Webflow = false;
  bool Aws = false;
  bool React = false;
  bool Shopify = false;
  bool Bubble = false;
  bool Framer = false;
  bool Figma = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CheckBox List',
            style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue'),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Select the list of Programs',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/0a/8cd7f1b14344618b75142593bc7af8/JavaCupLogo800x800.png?auto=format%2Ccompress&dpr=1'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Java',  style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Java,
                  onChanged: (value) {
                    setState(() {
                      Java = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage(
                    'https://www.webopedia.com/wp-content/uploads/1997/02/Webo.OracleProfile.png' ),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Oracle', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Oracle,
                  onChanged: (value) {
                    setState(() {
                      Oracle = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage(
                    'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Flutter', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: flutter,
                  onChanged: (value) {
                    setState(() {
                      flutter = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://a0.awsstatic.com/libra-css/images/logos/aws_logo_smile_1200x630.png'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Aws', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Aws,
                  onChanged: (value) {
                    setState(() {
                      Aws = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('React', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: React,
                  onChanged: (value) {
                    setState(() {
                      React = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://bubble.io/blog/content/images/2020/09/Logo-with-clearspace.png'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Bubble.io', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Bubble,
                  onChanged: (value) {
                    setState(() {
                      Bubble = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1469296240991125519/xpZr8yYS_400x400.jpg'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Framer', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Framer,
                  onChanged: (value) {
                    setState(() {
                      Framer = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://miro.medium.com/max/1200/1*RWriD6Jy4Ssd0rFjhLNt_w.png'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Figma', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Figma,
                  onChanged: (value) {
                    setState(() {
                      Figma = value!;
                    });
                  },
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage('https://cdn.shopify.com/static/share-image-common.jpg'),
                ),
                title: CheckboxListTile(
                  checkColor: Colors.white,
                  title: const Text('Shopify', style: TextStyle(fontSize: 30, fontFamily: 'Raleway'),),
                  value: Shopify,
                  onChanged: (value) {
                    setState(() {
                      Shopify = value!;
                    });
                  },
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
