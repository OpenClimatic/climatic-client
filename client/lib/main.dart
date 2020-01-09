import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/app/Profile.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';
import 'global/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<DynamicTheme>(
        stream: customTheme.streamColors.stream,
        initialData: lightMode,
        builder: (context, snap) {
          snapshot = snap;
          return new MaterialApp(
              title: 'Climalytic',
              theme: ThemeData(
                  brightness: snapshot.data.brightness,
                  accentColor: snapshot.data.accentColor,
                  primaryColor: snapshot.data.primaryColor,
                  primarySwatch: snapshot.data.primarySwatch,
                  backgroundColor: snapshot.data.backgroundColor),
              initialRoute: '/',
              routes: {
                '/': (context) => AuthLoading(),
                '/Home': (context) => App(),
                '/Settings': (context) => Settings(),
                '/Profile': (context) => Profile(),
                '/AppIntro': (context) => AppIntro(),
              });
        });
  }
}
