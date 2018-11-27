import 'package:flutter/material.dart';
import 'package:myapp/app_screens/ui_widget/ButtonExamples.dart';
import 'package:myapp/app_screens/ui_widget/TestField_Examples.dart';

class MakeCall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  }

}


class MakeCallState extends State<MakeCall> {

  var _formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Form(
        key: _formKey,
        child: new Column(children: <Widget>
        [
          new TextFiledCustom(
            textInputType: TextInputType.number,
            filedValidation: (String val) {
              if (val.isEmpty) {
                return 'user number is required';
              }
            },),
          Btn(text: 'Make Call', color: Colors.deepOrange, onPress: () {
            setState(() {
              if (_formKey.currentState.validate()) {
                debugPrint(
                    "CALL THIS NUMBER  ---->${textEditingController.text}");
              }
            });
          },)
        ],));
  }

}