import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() => runApp(MyApp());

Map<int, Color> color = {
  50: Color.fromRGBO(32, 219, 155, .1),
  100: Color.fromRGBO(35, 219, 155, .2),
  200: Color.fromRGBO(35, 219, 155, .3),
  300: Color.fromRGBO(35, 219, 155, .4),
  400: Color.fromRGBO(35, 219, 155, .5),
  500: Color.fromRGBO(35, 219, 155, .6),
  600: Color.fromRGBO(35, 219, 155, .7),
  700: Color.fromRGBO(35, 219, 155, .8),
  800: Color.fromRGBO(35, 219, 155, .9),
  900: Color.fromRGBO(35, 219, 155, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF20db9b, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
              primarySwatch: colorCustom,
              primaryColor: colorCustom,
              accentColor: Colors.red,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
              title: 'Climalytic',
              theme: theme,
              initialRoute: '/',
              routes: {
                '/': (context) => AuthLoading(),
                '/Home': (context) => App(),
                '/Settings': (context) => Settings(),
                '/AppIntro': (context) => AppIntro(),
              });
        });
  }
}
