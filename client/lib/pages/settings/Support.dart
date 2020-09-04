import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      StaticTopBar(action: false, label: "Hilfe", backRoute: "Settings"),
      Padding(
        padding: const EdgeInsets.all(25),
        child: Text(
          "Du kannst mehr auf unserer Webseite erfahren und den Kundensupport kontaktieren",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      FlatButton(
        onPressed: () async {
          /* await launch("https://climatic.app"); */
        },
        child: Text(
          "Öffne Webseite",
          style: Theme.of(context).textTheme.headline4,
        ),
      )
    ]));
  }
}
