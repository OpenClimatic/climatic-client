import 'package:client/global/theme.dart';
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
  Widget _quickSettings(context) {
    bool _darkModeSwitch =
        snapshot.data.brightness == Brightness.light ? false : true;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Container(
          width: 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "Quick",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 75,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius:
                            20.0, // has the effect of softening the shadow
                        spreadRadius:
                            1.0, // has the effect of extending the shadow
                        offset: Offset(
                          5.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                    color: snapshot.data.colorScheme.surface,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("Toggle Nightmode",
                          style: TextStyle(fontSize: 16)),
                    ),
                    Switch(
                      value: _darkModeSwitch,
                      onChanged: (value) async {
                        value
                            ? await customTheme.setThemes(darkDynamicTheme)
                            : await customTheme.setThemes(lightDynamicTheme);
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _settings(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Container(
          width: 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "GENERAL",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              _settingsButton(
                "Profile",
                FeatherIcons.settings,
                Allgemein(),
                context,
              ),
              _settingsButton(
                  "Privacy", FeatherIcons.shield, Datenschutz(), context),
              _settingsButton(
                  "Support", FeatherIcons.lifeBuoy, Support(), context),
              _settingsButton("About", FeatherIcons.info, About(), context),
            ],
          )),
    );
  }

  Widget _settingsButton(route, icon, pressed, context) {
    // if button is pressed it will navigate to the route specified ion the params

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => (Allgemein())));
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
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.chevronLeft,
                size: 32,
                color: snapshot.data.colorScheme.onSurface,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0.0, 0),
            child: Text(
              "Settings",
              style: snapshot.data.textTheme.title,
            ),
          ),
          backgroundColor: snapshot.data.colorScheme.background,
          elevation: 0,
        ),
        body: Container(
          color: snapshot.data.colorScheme.background,
          child: Align(
            alignment: Alignment.topLeft,
            child: SafeArea(
                child: Column(
              children: <Widget>[
                _quickSettings(context),
                _settings(context),
              ],
            )),
          ),
        ));
  }
}
