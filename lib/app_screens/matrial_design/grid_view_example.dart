import 'package:flutter/material.dart';
import 'package:myapp/app_screens/MonyCalculater.dart';


void main() {
  runApp(
      MaterialApp(
        title: 'App title',
        theme: ThemeData(primaryColor: Colors.deepOrange,
            accentColor: Colors.deepOrangeAccent,
            brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(title: Text('Grid View'),),
          body: GridView.count(
              crossAxisCount: 2,
              children:

              new List.generate(100, (index) {
                return Center(child: Product(),
                );
              })
          ),
        ),

      )

  );
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
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        elevation: 5.0,
        child: new Column(
          children: <Widget>
          [
            Expanded(child: PhoneImage(), flex: 2,)
            ,
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('Apple i phone 7 '),
              )
            ],),
            Expanded(child:
            new SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 0.5,
                  color: Colors.blueGrey,
                ),
              ),
            )
            ),

            Expanded(child:
            Row(children: <Widget>[
              Expanded(
                  child: Padding(padding: EdgeInsets.all(7.0), child:
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Add',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white),),
                    color: Colors.greenAccent,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),

                  )
                    ,)
              ),

              Expanded(
                  child: Padding(padding: EdgeInsets.all(7.0), child:
                  RaisedButton(
                    onPressed: () {},
                    child: Text('more',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white),),
                    color: Colors.orangeAccent,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),

                  )
                    ,)
              ),
            ],)
            )


          ],),
      ),
    );
  }

}


class PhoneImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/phone.png');
    Image image = Image(image: assetImage);
    return new Container(
        margin: EdgeInsets.all(10.0),
        child: image);
  }

}