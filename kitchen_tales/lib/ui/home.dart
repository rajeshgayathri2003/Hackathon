import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class kitchen_tales extends StatelessWidget {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: '5NrYqZCjpN0',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitchen Tales", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        // actions: [
        //   IconButton(icon: Icon(Icons.add_a_photo_sharp), onPressed: null)
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Account")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks), title: Text("Recipes")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_rounded), title: Text("Posts")),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
          width: 400,
        ),
      ),
    );
  }
}
