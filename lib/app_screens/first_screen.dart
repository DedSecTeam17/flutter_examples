import 'dart:math';

import 'package:flutter/material.dart';


class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'FirstApp',
        color: Colors.white,
        home: Scaffold(
          appBar: AppBar(
              title: new TextWidget("FootBall News", 18.0, Colors.white),
            backgroundColor: Colors.black,

          ),
          body:
          new Material(
            child:
            Center(
              child:
              new TextWidget(getMestryMessage(), 20.0, Colors.red)
              ,),
          ),
        )
    );
  }


  String getMestryMessage() {
    return "your number is ${new Random().nextInt(10)}";
  }

}


class TextWidget extends StatelessWidget {
  var _text = "";
  double font;
  Color colors;

  TextWidget(this._text, this.font, this.colors);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(_text, textDirection: TextDirection.ltr,
      style: TextStyle(color: colors, fontSize: font),);
  }
}


