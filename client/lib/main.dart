import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Climalytic',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => authLoading(),
        '/Home': (context) => App(),
        '/Settings': (context) => Settings(),
        '/AppIntro': (context) => AppIntro(),
      },
    );
  }
}
