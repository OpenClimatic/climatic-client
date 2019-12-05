import 'package:flutter/material.dart';
import 'pages/settings/Settings.dart';
import 'pages/authLoading.dart';
import 'pages/AppIntro/AppIntro.dart';
import 'pages/app.dart';

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
