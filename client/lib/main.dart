import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/app/Profile.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';
import 'global/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<DynamicTheme>(
        stream: customTheme.streamColors.stream,
        initialData: lightDynamicTheme,
        builder: (context, snap) {
          snapshot = snap;
          return new MaterialApp(
              title: 'Climalytic',
              theme: ThemeData(
                  brightness: snapshot.data.brightness,
                  primaryColor: snapshot.data.primaryColor,
                  primarySwatch: snapshot.data.primarySwatch,
                  bottomAppBarColor: snapshot.data.bottomAppBarColor,
                  colorScheme: snapshot.data.colorScheme,
                  textTheme: snapshot.data.textTheme),
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
