import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget aboutCard() {
    return Container(
      height: 400,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 350,
        decoration: BoxDecoration(
            color: snapshot.data.colorScheme.surface,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/icon/icon.png'),
              height: 160,
              width: 160,
            ),
            Column(
              children: <Widget>[
                Text("Climatic", style: snapshot.data.textTheme.headline3),
                Text(
                  "Beta 0.2.5",
                  style: snapshot.data.textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Climatic ist open source und mit <3 gemacht",
                      style: snapshot.data.textTheme.bodyText1,
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Wir befinden uns derzeit in der Beta, änderungen sind möglich",
                    style: snapshot.data.textTheme.bodyText1,
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

  Widget links() {
    return Container(
      child: Column(children: <Widget>[
        _settingsButton(
            "Webseite", FeatherIcons.cloud, "https://climatic.app", context),
        _settingsButton("Quellcode", FeatherIcons.github,
            "https://github.com/OpenClimatic/climatic-client", context)
      ]),
    );
  }

  Widget _settingsButton(route, icon, url, context) {
    // if button is pressed it will navigate to the route specified ion the params
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
          onPressed: () async {
            await launch(url);
          },
          child: Container(
              height: 75,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: snapshot.data.colorScheme.surface,
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
                          color: cc.blueBG),
                      child: Icon(icon, color: cc.blue)),
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
              "Über",
              style: snapshot.data.textTheme.headline2,
            ),
          ),
          backgroundColor: snapshot.data.colorScheme.background,
          elevation: 0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[aboutCard(), links()]),
        ));
  }
}
