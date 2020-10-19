import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class player extends StatefulWidget {
  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
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
        title: Text("Dish of the day", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Container(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
        ),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
