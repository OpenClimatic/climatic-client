import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatefulWidget {
  Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Support")),
        body: Center(
            child: Column(children: <Widget>[
          Text(
              "Du kannst mehr auf unserer Webseite erfahren und den Kundensupport kontaktieren"),
          FlatButton(
            onPressed: () async {
              await launch("https://climatic.app");
            },
            child: Text(
              "Öffne Webseite",
            ),
          )
        ])));
  }
}
