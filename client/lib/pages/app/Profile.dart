import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import '../settings/./Allgemein.dart';
import '../settings/Support.dart';
import '../settings/UeberUns.dart';
import '../settings/Datenschutz.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

Widget _header(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 15.0),
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

Widget _settings(context) {
  return Container(
      width: 500,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "GENERAL",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          _settingsButton(
            "Profile",
            FeatherIcons.settings,
            Allgemein(),
            context,
          ),
          _settingsButton(
              "Privacy", FeatherIcons.shield, Datenschutz(), context),
          _settingsButton("Support", FeatherIcons.lifeBuoy, Support(), context),
          _settingsButton("About", FeatherIcons.info, About(), context),
        ],
      ));
}

Widget _settingsButton(route, icon, pressed, context) {
  // if button is pressed it will navigate to the route specified ion the params

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => (Allgemein())));
        },
        child: Container(
            height: 75,
            width: MediaQuery.of(context).size.width * 0.9,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue[100]),
                    child: Icon(icon)),
                Container(
                  width: 200,
                  child: Text(route, style: TextStyle(fontSize: 16)),
                ),
                Container(
                  child: Icon(FeatherIcons.chevronRight),
                )
              ],
            ))),
  );
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        body: Center(
            child: Column(children: <Widget>[
          _header(context),
          _settings(context),
        ])));
  }
}
