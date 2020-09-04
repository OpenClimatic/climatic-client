import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Support extends StatefulWidget {
  Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.arrowLeftCircle,
                size: 32,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName("Settings"));
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0.0, 0),
            child: Text(
              "Hilfe",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
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
            ])));
  }
}
