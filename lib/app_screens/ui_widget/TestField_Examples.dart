import 'package:flutter/material.dart';

@immutable
class TextFiledCustom extends StatefulWidget {
  final TextInputType textInputType;
  final Function filedValidation;

  final TextEditingController textEditingController ;
  String label;
  String hint;
  TextFiledCustom(
      {this.textInputType, this.filedValidation, this.textEditingController,this.label,this.hint});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return TextFiledCustomState(textInputType: textInputType,
        filedValidation: filedValidation,
        textEditingController: textEditingController,label: this.label,hint: this.hint);
  }


}
class TextFiledCustomState extends State<TextFiledCustom> {

  final TextInputType textInputType;
    String text;
  final Function filedValidation;
  final TextEditingController textEditingController ;

  String label;
  String hint;

  TextFiledCustomState(
      {this.textInputType, this.filedValidation, this.textEditingController,this.label,this.hint});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: new TextFormField(
        validator: filedValidation, decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0)
          )
      ),
        controller: textEditingController,
        keyboardType: textInputType,
      ),

    );
  }

  void setText(String text) {
    this.text = text;
  }

  String getText() {
    return this.text;
  }


}