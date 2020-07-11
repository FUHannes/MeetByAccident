import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Call/InCallMenu.dart';
import 'package:meetby_accident/Widgets/Call/CalleeName.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class GroupCall extends StatefulWidget {
  List<User> users;
  int usersCount = 1;

  GroupCall({@required this.users});

  @override
  _GroupCallState createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {

  List<User> users;
  @override
  void initState() {
    super.initState();
    users=widget.users;
  }

  Widget userCol(user, usersCount) {
    return Stack(children: <Widget>[
      UserVideo(
        user: user,
        usersCount: usersCount,
      ),
      CalleeName(
        user: user,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        key: UniqueKey(),
        children: <Widget>[
          ListView(
            cacheExtent: 1000,
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.users.map((user) => userCol(user, users.length)).toList(),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InCallMenu(
                onUserAdded: (u){
                  setState(() {
                    users.add(u);
                  });
                },
              ) //your elements here
            ],
          ),
        ],
      ),
    );
  }
}

class UserVideo extends StatefulWidget {
  User user;
  int usersCount;
  UserVideo({@required this.user, this.usersCount});
  @override
  _UserVideoState createState() => _UserVideoState(usersCount: this.usersCount);
}

class _UserVideoState extends State<UserVideo> {
  VideoPlayerController _controller;
  int usersCount;
  _UserVideoState({this.usersCount});

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.user.streamUrl)
      ..initialize().then((_) {
        print("object");
        setState(() {});
      })
      ..play()..setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: _controller.value.initialized
          ? AspectRatio(
              aspectRatio: this.usersCount == 1 ? 4/6 : this.usersCount == 2 ? 1 : 6/4,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
