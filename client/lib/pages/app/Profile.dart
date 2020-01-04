import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

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
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 150,
      child: Row(
        children: <Widget>[Text("hello"), Text("name")],
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
            "profile",
            context,
          ),
          _settingsButton("profile", context),
          _settingsButton("profile", context),
        ],
      ));
}

Widget _settingsButton(route, context) {
  // if button is pressed it will navigate to the route specified ion the params

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FlatButton(
        onPressed: () => print("go to"),
        child: Container(
          height: 75,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        )),
  );
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text("Profile")),
        body: Center(
            child: Column(children: <Widget>[
          _header(context),
          _settings(context),
        ])));
  }
}
