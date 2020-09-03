import 'package:client/services/storage.dart';
import 'package:client/services/ThemeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AuthLoading extends StatefulWidget {
  AuthLoading({Key key}) : super(key: key);

  @override
  _AuthLoadingState createState() => _AuthLoadingState();
}

class _AuthLoadingState extends State<AuthLoading> {
  @override
  void initState() {
    super.initState();
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
    await Future.delayed(const Duration(seconds: 2), () {});
    if (finishedIntro == null) {
      _setInitialTheme();
      return true;
    } else {
      return false;
    }
  }

  _setInitialTheme() async {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    bool darkModeOn =
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
    darkModeOn
        ? onThemeChanged(true, themeNotifier)
        : onThemeChanged(false, themeNotifier);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(value: null, strokeWidth: 4),
      ),
    );
  }
}
