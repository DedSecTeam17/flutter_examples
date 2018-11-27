import 'package:flutter/material.dart';




class User{

  String _email;
  String _password;

  User(this._email, this._password);

  String get password => _password;

  String get email => _email;

  User.empty();


}