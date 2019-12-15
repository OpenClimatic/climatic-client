import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
              primarySwatch: Colors.indigo,
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
