import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class explore extends StatelessWidget{
  const explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: kToolbarHeight + 30,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
          ],
        ),
      ),
    );
  }

}