import 'package:client/services/ThemeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/settings/Settings.dart';
import 'pages/app/Profile.dart';
import 'pages/AuthLoading.dart';
import 'pages/appIntro/AppIntro.dart';
import 'pages/App.dart';
import 'themes/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var darkModeOn = prefs.getBool('darkMode') ?? true;
    runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return new MaterialApp(
        title: 'Climalytic',
        theme: themeNotifier.getTheme(),
        initialRoute: '/',
        routes: {
          '/': (context) => AuthLoading(),
          '/Home': (context) => App(),
          '/Settings': (context) => Settings(),
          '/Profile': (context) => Profile(),
          '/AppIntro': (context) => AppIntro(),
        });
  }
}
