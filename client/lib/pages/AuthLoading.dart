import 'package:client/global/theme.dart';
import 'package:flutter/material.dart';
import '../global/storage.dart';

class AuthLoading extends StatefulWidget {
  AuthLoading({Key key}) : super(key: key);

  @override
  _AuthLoadingState createState() => _AuthLoadingState();
}

class _AuthLoadingState extends State<AuthLoading> {
  @override
  void initState() {
    super.initState();
    _setTheme();
    _checkIfFirstStart().then((success) {
      if (success) {
        Navigator.pushReplacementNamed(context, '/AppIntro');
      } else {
        Navigator.pushReplacementNamed(context, '/Home');
      }
    });
  }

  _checkIfFirstStart() async {
    String finishedIntro = await storage.read(key: FINISHED_INTRO);
    if (finishedIntro == null) {
      return true;
    } else {
      return false;
    }
  }

  _setTheme() async {
    var hasSetTheme = await storage.read(key: HAS_THEME);
    var userTheme = await storage.read(key: THEME);
    if (hasSetTheme == null) {
      setThemeAcordingToPlatformBrightness(
          MediaQuery.of(context).platformBrightness);
    } else if (userTheme == "light") {
      customTheme.setThemes(lightDynamicTheme);
    } else if (userTheme == "dark") {
      customTheme.setThemes(darkDynamicTheme);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("loading"),
      ),
    );
  }
}
