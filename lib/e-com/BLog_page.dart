import 'package:flutter/material.dart';

import '../Card Ui.dart';
import '../List View with builder Ui.dart';
import 'BlogData.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlogHomeOnePage(),
  ));
}
class BlogHomeOnePage extends StatelessWidget {
  const BlogHomeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Categories',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(Icons.category),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs:  <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("For You"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Design"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Beauty"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Education"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),

          ///
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _BlogData(index);
                },
                separatorBuilder: (context, index) =>
                const SizedBox(height: 16.0),
              ),
              CardUi(),
              const Text("Tab 3"),
              const Text("Tab 4"),
              ListUi(),
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.folder_open),
                label: "File",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Account",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
            ],
          ),
        ),

    );
  }

  Widget _BlogData(int index) {
    Map article = articles[index];
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: Colors.red,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.white,
                  width: 80.0,
                  child:(
                      Image(image: NetworkImage("${article['image']}"))
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                     Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children:  [
                            const WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: const TextStyle(fontSize: 16.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}