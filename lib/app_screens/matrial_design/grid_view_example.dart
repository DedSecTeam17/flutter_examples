import 'package:flutter/material.dart';



void main(){
  runApp(Product());
}

class Product extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return ProductState();
  }

}


class ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.all(10.0),
      child: Card(
        elevation: 5.0,
        child: new Column(
          children: <Widget>
          [
            PhoneImage()

          ],),
      ),
    );
  }

}


class PhoneImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage=AssetImage('images/phone.png');
    Image image=Image(image: assetImage);
    return new Container(child: image);
  }

}