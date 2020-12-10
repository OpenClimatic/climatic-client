import 'package:client/services/ThemeNotifier.dart';
import 'package:client/widgets/CustomFlatButton.dart';
import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:client/themes/theme.dart' as theme;

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget _darkMode() {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
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
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        children: <Widget>[
          CustomFlatButton(
              icon: FeatherIcons.settings,
              label: "Profil Einstellungen",
              pageRoute: "Settings/Allgemein"),
          CustomFlatButton(
              icon: FeatherIcons.shield,
              label: "Privatsphäre",
              pageRoute: "Settings/Datenschutz"),
          CustomFlatButton(
              icon: FeatherIcons.lifeBuoy,
              label: "Hilfe",
              pageRoute: "Settings/Support"),
          CustomFlatButton(
              icon: FeatherIcons.info,
              label: "Über",
              pageRoute: "Settings/UeberUns"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          StaticTopBar(
              label: "Einstellungen", action: false, backRoute: "Profile"),
          _darkMode(),
          _settings(),
        ],
      ),
    );
  }
}
