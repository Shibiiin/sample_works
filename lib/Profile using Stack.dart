import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileS(),
  ));
}

class ProfileS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileSState();
}

class _ProfileSState extends State<ProfileS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: [
              Image.network(
                'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                height: 180,
                width: double.infinity,
              ),
            ],
          ),
          Positioned(
            top: 120,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://media.npr.org/assets/img/2022/07/09/292393717_572613227568467_4128593112564682711_n_custom-1c4747f8862d5f8b3b0137378dc87a2461d63425-s1100-c50.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 40,
            top: 150,
            child: Column(
              children: const [
                Icon(
                  Icons.add_circle,
                  size: 70,
                ),
              ],
            ),
          ),
          Positioned(
            left: 40,
            top: 140,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/msg.png",
                  height: 100,
                  width: 70,
                ),
              ],
            ),
          ),
          const ListTile(
            contentPadding: EdgeInsets.only(bottom: 80),
            title: Text(
              'Shibin Mohammed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
