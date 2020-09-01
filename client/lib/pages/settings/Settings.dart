import 'package:client/services/ThemeNotifier.dart';
import 'package:client/services/storage.dart';
import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import './Allgemein.dart';
import './Support.dart';
import './UeberUns.dart';
import './Datenschutz.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var _darkTheme = true;

  Widget _quickSettings(context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Container(
          width: 500,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 75,
                decoration: BoxDecoration(
                    boxShadow: [boxshadow],
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("Nachtmodus", style: TextStyle(fontSize: 16)),
                    ),
                    Switch(
                      value: _darkTheme,
                      onChanged: (value) {
                        if (value) {
                          onThemeChanged(value, themeNotifier);
                        } else {
                          onThemeChanged(value, themeNotifier);
                        }
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
    const url = "https://climatic.app";

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
                    "Allgemein",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              _settingsButton(
                "Profil Einstellungen",
                FeatherIcons.settings,
                Allgemein(),
                context,
              ),
              _settingsButton(
                  "Privatsphäre", FeatherIcons.shield, Datenschutz(), context),
              _settingsButton(
                  "Hilfe", FeatherIcons.lifeBuoy, Support(), context),
              _settingsButton("Über", FeatherIcons.info, About(), context),
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
                    builder: (BuildContext context) => (pressed)));
          },
          child: Container(
              height: 75,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.surface,
                boxShadow: [boxshadow],
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
                    child: Text(route,
                        style: Theme.of(context).textTheme.subtitle1),
                  ),
                  Container(
                    child: Icon(
                      FeatherIcons.chevronRight,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
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
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.arrowLeftCircle,
                size: 32,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0.0, 0),
            child: Text(
              "Einstellungen",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: Container(
          color: Theme.of(context).colorScheme.background,
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

void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
  (value)
      ? themeNotifier.setTheme(darkTheme)
      : themeNotifier.setTheme(lightTheme);
  var prefs = await SharedPreferences.getInstance();
  prefs.setBool('darkMode', value);
}
