import 'dart:math';

import 'package:flutter/material.dart';

class User {
  String name;
  ImageProvider profileImg;
  Color favoriteColor;

  User(this.name, {profileImg,this.favoriteColor,}) {
    this.profileImg = profileImg ??
        AssetImage("lib/assets/stock_profile.png"); //TODO: add default user img
  }
}

class UserHelper {
  static final UserHelper _instance = UserHelper._();
  factory UserHelper() => _instance;

  User _currentUser;
  UserHelper._() {
    _currentUser = User("user_name");
  }

  User get me {
    return _currentUser;
  }

  User get random {
    String name = _getRandomString(_rnd.nextInt(8)+1);
    return User(
      name,
      profileImg: AssetImage("lib/assets/stock_profile.png"),
      favoriteColor: Color.fromARGB(255, _rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255)),
    );
  }

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
