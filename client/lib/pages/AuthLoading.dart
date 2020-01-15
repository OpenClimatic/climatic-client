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
    checkIfFirstStart().then((success) {
      if (success) {
        Navigator.pushReplacementNamed(context, '/AppIntro');
      } else {
        Navigator.pushReplacementNamed(context, '/Home');
      }
    });
  }

  checkIfFirstStart() async {
    String finishedIntro = await storage.read(key: FINISHED_INTRO);
    if(finishedIntro == null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    setThemeAcordingToPlatformBrightness(MediaQuery.of(context).platformBrightness);

    return Scaffold(
      body: Center(
        child: Text("loading"),
      ),
    );
  }
}
