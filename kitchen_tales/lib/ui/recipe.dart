import 'package:flutter/material.dart';

class recipe extends StatelessWidget {
  //Stateless = immutable = cannot change object's properties
  //Every UI components are widgets
  @override
  Widget build(BuildContext context) {
    //Now we need multiple widgets into a parent = "Container" widget
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Apple Cake",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                ),
                //Need to add space below this Text ?
                new Text(
                  "Sift together the all-purpose flour and baking soda. It is done to evenly distribute the baking soda in flour. Gradually, add this to the egg mixture. If required, add a little milk and mix till the batter is fluffy and soft. You may not add the entire milk if you feel the consistency of your cake is fine and it pours down like canned condensed milk. Add vanilla essence and blend well. Vanilla essence is important to camouflage the smell of eggs.",
                  style: new TextStyle(color: Colors.grey[850], fontSize: 16.0),
                ),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(
            " 100",
            style: new TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Kitchen Tales'),
            ),
            body: new ListView(
              children: <Widget>[
                new Image.asset('images/cake.png', fit: BoxFit.cover),
                //You can add more widget bellow
                titleSection
              ],
            ))); //Widget with "Material design"
  }
}
