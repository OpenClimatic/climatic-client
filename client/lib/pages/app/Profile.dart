import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

Widget _header() {
  return Container(
    width: 500,
    height: 150,
    child: Row(
      children: <Widget>[Text("hello"), Text("name")],
    ),
  );
}

Widget _settings() {
  return Container(
    width: 500,
    height: 150,
    child: Row(
      children: <Widget>[Text("hello"), Text("name")],
    ),
  );
}

Widget _version() {
  return Container(
    width: 500,
    height: 150,
    child: Row(
      children: <Widget>[Text("hello"), Text("name")],
    ),
  );
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: Center(
            child: Column(children: <Widget>[
          _header(),
          _settings(),
          _version(),
        ])));
  }
}
