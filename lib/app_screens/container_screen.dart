import 'package:flutter/material.dart';

import 'first_screen.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(40.0),

          child: new Text(
            'Hi there',
            style: TextStyle(fontSize: 23.0,
              color: Colors.amber,
              decoration: TextDecoration.none,fontFamily: 'Raleway',fontWeight: FontWeight.w700
            ),
          ),
        )
    );
  }
}