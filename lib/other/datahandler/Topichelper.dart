import 'package:flutter/material.dart';

class Topic{
  String name;
  int count;

  Topic({@required this.name, @required this.count});
}

class TopicHelper{
  static final TopicHelper _instance = TopicHelper._();
  factory TopicHelper(){return _instance;}
  TopicHelper._(){

  }

  List<Topic> topics({String startsWith,double maxLength=3}){

    //TODO: de-mockUp
    return [
      Topic(count: 8,name: "Fussball"),
      Topic(name: "Krise", count: 12),
      Topic(name: "Klassische Musik", count: 2),
    ];
  }
}