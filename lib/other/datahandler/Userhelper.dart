import 'dart:math';

import 'package:flutter/material.dart';

class User {
  String name;
  int age;
  String city;
  String country;
  String hobbies;
  ImageProvider profileImg;
  Color favoriteColor;
  String streamUrl;

  User(
    this.name, {
    this.age,
    this.country,
    this.city,
    this.hobbies,
    profileImg,
    this.favoriteColor,
    this.streamUrl='http://clips.vorwaerts-gmbh.de/VfE_html5.mp4'??'http://techslides.com/demos/sample-videos/small.mp4'??'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
  }) {
    this.profileImg = profileImg ??
        AssetImage("lib/assets/stock_profile.png"); //TODO: add default user img
  }

  factory User.morph(User u,
    {String name,
    int age,
    String country,
    String city,
    String hobbies,
    profileImg,
    Color favoriteColor,
    String streamUrl,
  }){
    return User(name??u.name, age:age??u.age, country: country??u.country, city:city??u.city, hobbies:hobbies??u.hobbies,profileImg: profileImg??u.profileImg,favoriteColor: favoriteColor??u.favoriteColor, streamUrl: streamUrl??u.streamUrl);
  }
}

class UserHelper {
  static final UserHelper _instance = UserHelper._();
  factory UserHelper() => _instance;

  User _currentUser;
  UserHelper._() {
    _currentUser = User("user_name");
  }

//TODO: make persistent
  User get me {
    return _currentUser;
  }

  set me(User user) {
    _currentUser=user;
  }

  User get random {
    String name = _getRandomString(_rnd.nextInt(8) + 1);
    return User(
      name,
      age: _rnd.nextInt(66) + 18,
      country: _getRandomString(_rnd.nextInt(8) + 1),
      city: _getRandomString(_rnd.nextInt(8) + 1),
      hobbies: _getRandomString(_rnd.nextInt(8) + 1),
      profileImg: AssetImage("lib/assets/stock_profile.png"),
      favoriteColor: Color.fromARGB(
          255, _rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255)),
    );
  }

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
