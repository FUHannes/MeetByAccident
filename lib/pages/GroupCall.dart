import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Call/InCallMenu.dart';
import 'package:meetby_accident/Widgets/Call/CalleeName.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class GroupCall extends StatelessWidget {
  List<User> users; //die kannste jetzt nutzen
  GroupCall({@required this.users});

  Widget userCol(user) {
    return Stack(children: <Widget>[
      UserVideo(
        user: user,
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
        children: <Widget>[
          ListView(
            cacheExtent: 1000,
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: users.map((user) => userCol(user)).toList(),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InCallMenu() //your elements here
            ],
          ),
        ],
      ),
    );
  }
}

class UserVideo extends StatefulWidget {
  User user;
  UserVideo({@required this.user});
  @override
  _UserVideoState createState() => _UserVideoState();
}

class _UserVideoState extends State<UserVideo> {
  VideoPlayerController _controller;

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
              aspectRatio: _controller.value.aspectRatio,
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
