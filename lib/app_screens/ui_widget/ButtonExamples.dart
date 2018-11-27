import 'package:flutter/material.dart';

class Btn extends StatelessWidget {

  final String text;
  final Color color;
  final Function onPress;


  Btn({this.text, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(onPressed: onPress,
          child: Text(
            text, style: TextStyle(fontSize: 12.0, color: Colors.white),),
          color: color,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))
      ),
    );
  }


}
