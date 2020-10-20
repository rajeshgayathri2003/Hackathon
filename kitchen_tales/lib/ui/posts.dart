import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class post extends StatefulWidget {
  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
  String imageUrl;
  File imageFile;

  _openGallery(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontFamily: 'NotoSansHK-Regular', fontSize: 20.0),
                    ),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Text('Camera',
                        style: TextStyle(
                            fontFamily: 'NotoSansHK-Regular', fontSize: 20.0)),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _decideImageview() {
    if (imageFile == null) {
      return Column(
        children: [
          Center(
              child: Text(
            'What have you cooked today?',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'DancingScript- VariableFont_wght',
                fontSize: 28.0),
          ))
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      );
    } else {
      return Image.file(
        imageFile,
        width: 400,
        height: 400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/vanilla.jpg"), fit: BoxFit.cover)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        _decideImageview(),
        Padding(padding: EdgeInsets.all(10.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: 'Dish Name',
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: "Cook's Name",
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: "Ingredients",
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: "How long did it take you?",
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: "Calories",
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                gapPadding: 12.0,
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: "Tell the world how you made it!",
            hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'NotoSansHK- Regular',
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        RaisedButton(
          color: Colors.lime,
          onPressed: () {
            _showChoiceDialog(context);
          },
          child: Text(
            'Click to add image',
            style: TextStyle(
                color: Colors.indigoAccent,
                fontFamily: 'SourceSerifPro - BoldItalic'),
          ),
        )
      ]),
    )));
  }
}
