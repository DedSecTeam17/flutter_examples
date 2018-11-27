import 'package:flutter/material.dart';


class ContainerWithRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        OurBtn(),


      ],

    );
  }

}


class cards extends StatelessWidget {
  Color _color;

  cards(this._color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Expanded(
      child:
      Container(
          alignment: Alignment.topCenter,
          color: _color,
          height: 200.0,
          child: rowsExample()
      ),
    );
  }

}

class columnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Column(
      children: <Widget>[
        Expanded(child:
        new Text('Mohammed',
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),),
        ),
        Expanded(child:
        new Text('Mohammed',
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),),
        ),

        Expanded(child:
        new Text('Mohammed',
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),),
        ),

        Expanded(child:
        new Text('Mohammed',
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),),
        ),


      ],
    );
  }

}


class OurBtn extends StatelessWidget {

  showTheDialog(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
        title: Text('Hi there', style: TextStyle(color: Colors.lightBlue),),
        content: new Container(
          height: 150.0,
          child:
          new Column(children: <Widget>[
            Text(
                'ksjd skfdbsjdbhf sjfbjsdbfhjbd vjsifcsdjbhfsbdfmsdkfnskdfhksdhfoisjfdjfsdfjsdn'),
            new Row(children: <Widget>[
              Expanded(

                child: new Container(child:

                new RaisedButton(
                  onPressed: () {},
                  child: Text('Ok'),
                  color: Colors.blueAccent,),
                  margin: EdgeInsets.all(20.0),
                ),

              ),


              Expanded(

                child: new Container(child:

                new RaisedButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                  color: Colors.blueAccent,),
                  margin: EdgeInsets.all(20.0),
                ),

              ),

            ],)
          ],)

          ,)

    );

//     show dialog in specific context
    showDialog(context: context, builder: (BuildContext context) {
      return alertDialog;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Container(
        margin: EdgeInsets.all(22.0),
        child:
        new Row(children: <Widget>[
          Expanded(child:

          RaisedButton(
            onPressed: () {
              showTheDialog(context);
            },
            child: Text(
              'Click Me',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            elevation: 6.0,
            textTheme: ButtonTextTheme.accent,
          ),

          )

        ],)
    );
  }

}


class rowsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Row(
      children: <Widget>[

        Expanded(child:
        new Text('Mohammed',
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),),
        ),
        Expanded(child:
        ourImage()
        )
        ,
        Expanded(child: OurBtn())


      ],
    );
  }

}

class ourImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/example.jpg');
    Image image = Image(image: assetImage);

    return new Container(child: image,
      height: 200.0,
      margin: EdgeInsets.all(10.0),
      color: Colors.green,

    );
    // TODO: implement build
  }

}