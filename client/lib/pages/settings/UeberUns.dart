import 'package:client/widgets/CustomFlatButton.dart';
import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart' as theme;

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget aboutCard() {
    return Container(
      margin: EdgeInsets.all(18),
      height: 400,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 350,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [theme.boxshadowSmall],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/icon/icon.png'),
              height: 125,
              width: 125,
            ),
            Column(
              children: <Widget>[
                Text("Climatic", style: Theme.of(context).textTheme.headline3),
                Text(
                  "Beta 0.2.5",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Climatic ist open source und mit <3 gemacht",
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Wir befinden uns derzeit in der Beta, änderungen sind möglich",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        StaticTopBar(action: false, label: "Climatic", backRoute: "Settings"),
        aboutCard(),
        CustomFlatButton(
            icon: FeatherIcons.cloud, label: "Webseite", pageRoute: "Home"),
        CustomFlatButton(
            icon: FeatherIcons.github, label: "Quellcode", pageRoute: "Home"),
      ]),
    );
  }
}
