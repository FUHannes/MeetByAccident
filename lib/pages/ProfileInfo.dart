import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';

class ProfileInfo extends StatelessWidget {

  ///if null: new singlecall
  Function callback;
  User user;
  ProfileInfo({@required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(user.name,   style: TextStyle( height: 2,  fontSize: 40),),
            ProfileIcon(user, radius: 125 ),
            Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                            child: Text('Age:\t\t\t', textAlign: TextAlign.end, style: TextStyle( height: 2,  fontSize: 20),),
                        ),
                        Container(
                            child: Text(user.age.toString(), style: TextStyle( height: 2,  fontSize: 20),)
                        ),
                      ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            child: Text('Country:\t\t\t', textAlign: TextAlign.end, style: TextStyle( height: 2,  fontSize: 20),),
                          ),
                          Container(
                              child: Text(user.country.toString(), style: TextStyle( height: 2,  fontSize: 20),)
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            child: Text('City:\t\t\t', textAlign: TextAlign.end, style: TextStyle( height: 2,  fontSize: 20),),
                          ),
                          Container(
                              child: Text(user.city.toString(), style: TextStyle( height: 2,  fontSize: 20),)
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            child:  Text('Hobbies:\t\t\t', textAlign: TextAlign.end, style: TextStyle( height: 2,  fontSize: 20),),
                          ),
                          Container(
                              child: Text(user.hobbies.toString(), style: TextStyle( height: 2,  fontSize: 20),)
                          ),
                        ]
                    )
                  ],
                )
    ),
          ],
        ),
      )
    );
  }
}
