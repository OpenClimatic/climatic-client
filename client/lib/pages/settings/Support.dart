import 'package:client/widgets/CustomFlatButton.dart';
import 'package:client/widgets/StaticTopBar.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
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
        padding: const EdgeInsets.all(18),
        child: Text(
          "Du kannst mehr auf unserer Webseite erfahren und den Kundensupport kontaktieren",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      CustomFlatButton(
        link: true,
        icon: FeatherIcons.cloud,
        label: "Öffne Webseite",
        url: "https://climatic.app",
      ),
    ]));
  }
}
