import 'package:flutter/material.dart';
import 'package:myapp/app_screens/RoundedBtn.dart';
import 'package:myapp/app_screens/ui_widget/TestField_Examples.dart';
import 'package:myapp/main.dart';

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return CalculatorAppState();
  }

}

class CalculatorAppState extends State<CalculatorApp> {

  String _selectedItem = 'pundes';


  TextEditingController textEditingControllerForPrincipale = new TextEditingController();
  TextEditingController textEditingControllerForMount = new TextEditingController();
  TextEditingController textEditingControllerForTerm = new TextEditingController();
  var _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("Selected Item : ${_selectedItem}");

    return new Form(
        key: _key,
        child: new ListView(children: <Widget>[
          new Column(
            children: <Widget>
            [
              MoneyImage(),
              TextFiledCustom(textInputType: TextInputType.text,
                textEditingController: textEditingControllerForPrincipale,
                filedValidation: (String value) {
                  if (value.isEmpty) {
                    return 'empty filed not allowed';
                  }
                },
              ),
              TextFiledCustom(textInputType: TextInputType.number,
                textEditingController: textEditingControllerForMount,
                filedValidation: (String value) {
                  if (value.isEmpty) {
                    return 'empty filed not allowed';
                  }
                },

              ),
              new Row(children: <Widget>
              [
                new Expanded(
                    child: TextFiledCustom(textInputType: TextInputType.text,
                      textEditingController: textEditingControllerForTerm,
                      filedValidation: (String value) {
                        if (value.isEmpty) {
                          return 'empty filed not allowed';
                        }
                      },
                    )),
                new Expanded(child: Money(
                  onItemChange: (String s) {
                    _selectedItem = s;
                    debugPrint("HI THERE " + _selectedItem);
                  },))
              ],)
              , new Row(children: <Widget>
              [
                new Expanded(child:
                Btn(
                  text: 'Reset',
                  color: Colors.indigoAccent,
                  onPress: () {
                    this.textEditingControllerForPrincipale.text = '';
                    this.textEditingControllerForMount.text = '';
                    this.textEditingControllerForTerm.text = '';
                  },)
                ),
                new Expanded(
                    child: Btn(
                      text: 'calculate',
                      color: Colors.indigoAccent,
                      onPress: () {
                        setState(() {
                          if (_key.currentState.validate()) {
                            debugPrint(
                                "Principale   :${textEditingControllerForPrincipale
                                    .text}");
                            debugPrint(
                                "Amount       :${textEditingControllerForMount
                                    .text}");
                            debugPrint(
                                "Term         :${textEditingControllerForTerm
                                    .text}");
                            debugPrint("selected type:${_selectedItem}");
                          }
                        });
                      },)
                ),
              ],)
//        image
            ],
          ),
        ],)


    );
  }

}


// money
class MoneyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/mony.png');
    Image image = Image(image: assetImage);
    return new Center(
        child:
        new Container(
          margin: EdgeInsets.all(10.0),
          child: image,
          height: 200.0,
        )
    );
    // TODO: implement build
  }
}


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


class Money extends StatefulWidget {
  final Function onItemChange;

  const Money({this.onItemChange});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MoneyState(onItemChange: onItemChange);
  }

}

class MoneyState extends State<Money> {
  String _mony = "pounds";
  final Function onItemChange;

  MoneyState({this.onItemChange});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var money = ['pounds', 'dollars', 'euros'];
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: new DropdownButton<String>(
        items: money.map((mony) {
          return new DropdownMenuItem<String>(
              value: mony,
              child: Text(mony)
          );
        }).toList(),
        onChanged: (String text) {
          setState(() {
            _mony = text;
            onItemChange(text);
          });
        }
        , value: _mony,
      ),
    );
  }
}



