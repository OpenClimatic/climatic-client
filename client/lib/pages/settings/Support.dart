import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart';

class Support extends StatefulWidget {
  Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: snapshot.data.colorScheme.background,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.arrowLeftCircle,
                size: 32,
                color: snapshot.data.colorScheme.onSurface,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0.0, 0),
            child: Text(
              "Hilfe",
              style: snapshot.data.textTheme.headline2,
            ),
          ),
          backgroundColor: snapshot.data.colorScheme.background,
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
                  style: snapshot.data.textTheme.bodyText1,
                ),
              ),
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
