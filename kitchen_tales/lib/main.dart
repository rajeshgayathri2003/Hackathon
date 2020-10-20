import 'package:flutter/material.dart';
import 'package:kitchen_tales/ui/detail_screen.dart';
import 'ui/posts.dart';
import 'ui/youtube.dart';
import 'ui/home_screen.dart';
import 'ui/home.dart';
import 'ui/home_screen.dart';
import 'ui/account.dart';
import 'ui/quotes.dart';

void main() {
  runApp(new MaterialApp(
    home: kitchen_tales(),
  ));
}

//recipe_screen() => runApp(new recipe());

class kitchen_tales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen Tales',
      home: MyHomePage(
        title: 'Kitchen Tales',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    Wisdom(),
    BizCard(),
    HomeScreen(),
    post(),
    player()
  ]; //don't change the above list
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitchen Tales",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'YanoneKaffeesatz-VariableFont_wght',
              fontSize: 28.0,
            )),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        // actions: [
        //   IconButton(icon: Icon(Icons.add_a_photo_sharp), onPressed: null)
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              title: Text("Home")),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.account_circle),
              title: Text("Account")),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.bookmarks),
              title: Text("Recipes")),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.add_a_photo_rounded),
              title: Text("Posts")),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.movie_filter_rounded),
              title: Text('Videos')),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    ); //don't change the nav bar
  }
}
