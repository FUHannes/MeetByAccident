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
        this.streamUrl='https://media.istockphoto.com/videos/smiling-indian-woman-vlogger-speaking-looking-at-camera-at-home-video-id1180677533?b=1&k=6&m=1180677533&h=F_OFJLAkeCBEnvhpuLDbIYt4Z1tKsxwM9J9mxmYlirw=',
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
  static int randomGen = 1;

  User _currentUser;
  UserHelper._() {
    _currentUser = User(names[0], profileImg: NetworkImage(profileImages[0]));
  }

//TODO: make persistent
  User get me {
    return _currentUser;
  }

  set me(User user) {
    _currentUser=user;
  }
  User get singleCall {
    String name = names[1];
    return User(
      name,
      age: _rnd.nextInt(66) + 18,
      country: countries[1],
      city: cities[1],
      hobbies: hobbies[1],
      profileImg: NetworkImage(profileImages[1]),
      favoriteColor: Color.fromARGB(
          255, _rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255)),
    );
  }

  User get random {
    String name = _getRandomString(_rnd.nextInt(8) + 1);
    return User(
      name,
      age: _rnd.nextInt(35) + 18,
      country: _getRandomString(_rnd.nextInt(8) + 1),
      city: _getRandomString(_rnd.nextInt(8) + 1),
      hobbies: _getRandomString(_rnd.nextInt(8) + 1),
      profileImg: AssetImage("lib/assets/stock_profile.png"),
      favoriteColor: Color.fromARGB(
          255, _rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255)),
    );
  }

  User get generate {
    randomGen++;
    if(randomGen > names.length)
      randomGen = 2;
    return User(
      names[randomGen-1],
      age: _rnd.nextInt(66) + 18,
      country: countries[randomGen-1],
      city: cities[randomGen-1],
      hobbies: hobbies[randomGen-1],
      profileImg: NetworkImage(profileImages[randomGen-1]),
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
var profileImages = [
  'https://images.pexels.com/photos/3764430/pexels-photo-3764430.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/458394/pexels-photo-458394.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2097475/pexels-photo-2097475.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1251247/pexels-photo-1251247.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/1642161/pexels-photo-1642161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/2690323/pexels-photo-2690323.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/2556089/pexels-photo-2556089.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/2091327/pexels-photo-2091327.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/2915216/pexels-photo-2915216.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'https://images.pexels.com/photos/2088366/pexels-photo-2088366.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'];
var names = ['Stephanie','Hanna','James','Stephan','Lora', 'Lauren', 'Reem', 'Diana', 'Jimmy','Manar','Twain'];
var countries = ['Germany','USA','France','Italy','Spain', 'Finland', 'Chile' , 'Russia', 'Brazil','India','Jordan'];
var cities = ['Berlin','New York','Paris','Rome','Madrid', 'Swarika','Merona', 'Moskau', 'Samba' , 'Mumbay' , 'Amman'];
var hobbies = ['Basketball, Music, Politics', 'Art, Music', 'Football, Music, Politics', 'Guitar, Bars, Reading', 'Boxing, Music, Newspapers', 'Chess, Cello', 'Football, Music, Politics', 'Guitar, Bars, Reading', 'Boxing, Music, Newspapers', 'Chess, Cello', 'Football, Music, Politics', 'Guitar, Bars, Reading', 'Boxing, Music, Newspapers', 'Chess, Cello'];
var videos = [
  '',
  'https://media.istockphoto.com/videos/smiling-indian-woman-vlogger-speaking-looking-at-camera-at-home-video-id1180677533?b=1&k=6&m=1180677533&h=F_OFJLAkeCBEnvhpuLDbIYt4Z1tKsxwM9J9mxmYlirw=',
  'https://player.vimeo.com/external/405203426.sd.mp4?s=05d98e489a9a80a48e968a59edddf9fc885cc2ae&profile_id=164',
  'https://ak.picdn.net/shutterstock/videos/1047036961/preview/stock-footage-smiling-young-adult-man-vlogger-look-at-camera-talk-make-live-video-conference-call-online-chat.webm',
  'https://ak.picdn.net/shutterstock/videos/1040399903/preview/stock-footage-close-up-portrait-of-joyful-young-woman-with-bright-hair-piercing-and-dental-braces-standing-alone.webm',
'',
'',
'',
'',
'', //m
'',
'',
'',];