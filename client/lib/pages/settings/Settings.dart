import 'package:client/services/ThemeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/pages/settings/Allgemein.dart';
import 'package:client/pages/settings/Support.dart';
import 'package:client/pages/settings/UeberUns.dart';
import 'package:client/pages/settings/Datenschutz.dart';
import 'package:provider/provider.dart';
import 'package:client/themes/theme.dart' as theme;

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget _darkMode() {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    bool _darkTheme = (themeNotifier.getTheme() == theme.darkTheme);

    return Container(
      margin: EdgeInsets.fromLTRB(16, 24, 16, 0),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
          boxShadow: [theme.boxshadowSmall],
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("Nachtmodus",
                style: Theme.of(context).textTheme.subtitle1),
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
    );
  }

  Widget _settings() {
    const url = "https://climatic.app";

    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        children: <Widget>[
          _settingsButton(
            "Profil Einstellungen",
            FeatherIcons.settings,
            Allgemein(),
            context,
          ),
          _settingsButton(
              "Privatsphäre", FeatherIcons.shield, Datenschutz(), context),
          _settingsButton("Hilfe", FeatherIcons.lifeBuoy, Support(), context),
          _settingsButton("Über", FeatherIcons.info, About(), context),
        ],
      ),
    );
  }

  Widget _settingsButton(route, icon, pressed, context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => (pressed)));
      },
      child: Container(
          height: 70,
          margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [theme.boxshadowSmall],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: theme.blueBG),
                    child: Icon(icon, color: theme.blue)),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  width: 200,
                  child:
                      Text(route, style: Theme.of(context).textTheme.subtitle1),
                ),
              ]),
              Icon(
                FeatherIcons.chevronRight,
                color: Theme.of(context).colorScheme.onSurface,
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        leading: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.arrowLeftCircle,
                size: 32,
              ),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName("Profile"));
              },
            )),
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text("Einstellungen",
              style: Theme.of(context).textTheme.headline2),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _darkMode(),
          _settings(),
        ],
      ),
    );
  }
}
