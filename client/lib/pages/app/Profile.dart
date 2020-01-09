import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import '../settings/./Allgemein.dart';
import '../settings/Support.dart';
import '../settings/UeberUns.dart';
import '../settings/Datenschutz.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

Widget _header(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 15.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              height: 80,
              width: 80,
              child: Image.asset('assets/images/profile.png')),
          Container(
            width: 200,
            child: Text(
              "Ricardo Joseph",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    ),
  );
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: IconButton(
                icon: Icon(FeatherIcons.chevronLeft, size: 32),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0.0, 0),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 26),
              ),
            ),
            backgroundColor: Colors.grey[100],
            elevation: 0,
            actions: <Widget>[
              // action button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: IconButton(
                  icon: Icon(FeatherIcons.settings, size: 26),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Settings");
                  },
                ),
              ),
            ]),
        body: Center(
            child: Column(children: <Widget>[
          _header(context),
        ])));
  }
}
