import 'package:flutter/material.dart';

class User {
  String name;
  ImageProvider profileImg;

  User(this.name,{profileImg}){
    this.profileImg=profileImg??AssetImage("lib/assets/icon.png");//TODO: add default user img
  }
}

class UserHelper{
  static final UserHelper _instance = UserHelper._();
  factory UserHelper() => _instance;

  User _currentUser;
  UserHelper._(){
    _currentUser= User("__user_name:placeholder__");
  }

  User get me{
    return _currentUser;
  }
}