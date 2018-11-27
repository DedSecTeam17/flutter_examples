import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/app_screens/Auth/User.dart';
import 'package:shared_preferences/shared_preferences.dart';




class UserAuth{



  static  UserAuth _singleton = new UserAuth._internal();

  factory UserAuth() {
    return _singleton;
  }

  static UserAuth getInstance(){
    if(_singleton==null){
      _singleton = new UserAuth._internal();
      return _singleton;
    }
    return _singleton;
  }

  UserAuth._internal();



  String PASSWORD_KEY="PASSWORD_KEY";
  String EMAIL_KEY="EMAIL_KEY";

  SharedPreferences sharedPreferences;

  void saveUserData(User user) async{
  sharedPreferences= await SharedPreferences.getInstance();

    sharedPreferences.setString(EMAIL_KEY, user.email);
    sharedPreferences.setString(PASSWORD_KEY, user.password);
    sharedPreferences.commit();
  }


  void destroyUserDate() async{
    sharedPreferences= await SharedPreferences.getInstance();
    sharedPreferences.remove(EMAIL_KEY);
    sharedPreferences.remove(PASSWORD_KEY);
    sharedPreferences.commit();
  }


  Future<User> getCurrentUserData() async{
    sharedPreferences= await SharedPreferences.getInstance();

    User user= new User(sharedPreferences.get(EMAIL_KEY), sharedPreferences.get(PASSWORD_KEY));

    return user;
  }




}