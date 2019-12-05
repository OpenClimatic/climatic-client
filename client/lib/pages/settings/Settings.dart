import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import './Allgemein.dart';
import 'Support.dart';
import 'UeberUns.dart';
import 'Datenschutz.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Container(
          child: Align(
            alignment: Alignment.topLeft,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    (Allgemein())));
                      },
                      icon: Icon(FeatherIcons.octagon),
                      label: Text(
                        "Allgemein",
                        textAlign: TextAlign.right,
                      )),
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => (About())));
                      },
                      icon: Icon(FeatherIcons.users),
                      label: Text(
                        "Über uns",
                        textAlign: TextAlign.right,
                      )),
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    (Datenschutz())));
                      },
                      icon: Icon(FeatherIcons.lock),
                      label: Text("Datenschutz")),
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    (Support())));
                      },
                      icon: Icon(FeatherIcons.lifeBuoy),
                      label: Text("Support")),
                ],
              ),
            ),
          ),
        ));
  }
}
