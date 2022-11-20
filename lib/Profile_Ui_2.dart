import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 15, right: 25),
              child: ListTile(
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.dehaze,
                      size: 30,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 200,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc=',
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 80, right: 30),
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/ig.png'),
                      SizedBox(width: 20),
                      Image.asset('assets/images/fb.png'),
                      SizedBox(width: 20),
                      Image.asset('assets/images/lkdn.png'),
                      SizedBox(width: 20),
                      Image.asset('assets/images/twit.png'),
                      SizedBox(width: 20),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Danny Lucifer',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '@Dannyluicfer',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Mobile App Developer and Student',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              child: SingleChildScrollView(
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SettingList(
                        lab: 'Privacy',
                        icon: Icon(
                          Icons.privacy_tip,
                          color: Colors.black,
                        ),
                      ),
                      SettingList(
                        lab: 'Purcahse History',
                        icon: Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                      ),
                      SettingList(
                        lab: 'Help and Support',
                        icon: Icon(
                          Icons.help,
                          color: Colors.black,
                        ),
                      ),
                      SettingList(
                        lab: 'Setting',
                        icon: Icon(Icons.settings, color: Colors.black),
                      ),
                      SettingList(
                        lab: 'Invite a Friend',
                        icon: Icon(Icons.person_add, color: Colors.black),
                      ),
                      SettingList(
                        lab: 'Logout',
                        icon: Icon(Icons.logout, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingList extends StatelessWidget {
  const SettingList({super.key, required this.lab, required this.icon});

  final String lab;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          lab,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
