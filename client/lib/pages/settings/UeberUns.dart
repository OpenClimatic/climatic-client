import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart';
import 'package:url_launcher/url_launcher.dart';

var theme = snapshot.data;

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget aboutCard() {
    return Container(
      height: 400,
      color: Colors.red,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 350,
        decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20)),
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
                          color: Colors.lightBlue[100]),
                      child: Icon(icon)),
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
        backgroundColor: theme.colorScheme.background,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.chevronLeft,
                size: 32,
                color: theme.colorScheme.onSurface,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0.0, 0),
            child: Text(
              "Über",
              style: theme.textTheme.title,
            ),
          ),
          backgroundColor: theme.colorScheme.background,
          elevation: 0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[aboutCard(), links()]),
        ));
  }
}
