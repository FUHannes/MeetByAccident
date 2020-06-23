import 'package:flutter/material.dart';

class User {
  String name;
  ImageProvider profileImg;

  User(this.name,{profileImg}){
    this.profileImg=profileImg??AssetImage("lib/assets/stock_profile.png");//TODO: add default user img
  }
}

class UserHelper{
  static final UserHelper _instance = UserHelper._();
  factory UserHelper() => _instance;

  User _currentUser;
  UserHelper._(){
    _currentUser= User("user_name");
  }

  User get me{
    return _currentUser;
  }
}