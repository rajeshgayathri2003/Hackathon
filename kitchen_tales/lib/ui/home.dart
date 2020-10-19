import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kitchen Tales",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'YanoneKaffeesatz-VariableFont_wght'),
        ),
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
              icon: Icon(Icons.account_circle), title: Text("Account")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks), title: Text("Recipes")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_rounded), title: Text("Posts")),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded), title: Text('Videos')),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
