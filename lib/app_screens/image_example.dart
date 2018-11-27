import 'package:flutter/material.dart';


class imageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: <Widget>[
          ourImage()

        ],
      ),
    );
  }

}


class ourImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/example.jpeg');
    Image image = Image(image: assetImage);
    return new Container(child: image,

    );
    // TODO: implement build
  }

}