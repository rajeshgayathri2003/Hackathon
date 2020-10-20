import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "SHARE YOUR RECIPES WITH THE WORLD!!",
    "DESTRESS YOURSELF BY COOKING!!",
    "BEAT THE BORING LOCKDOWN WITH THESE DISHES!!",
    "MEET FOODIES ALL AROUND THE WORLD!!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 500,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(Icons.arrow_forward),
                  label: Text(
                    "NEXT",
                    style: TextStyle(fontSize: 18.8, color: Colors.white),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment our index/counter by 1
    setState(() {
      _index += 1;
    });
  }
}
