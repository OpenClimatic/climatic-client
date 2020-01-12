import 'package:client/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
    await Future.delayed(Duration(
        seconds:
            1)); // could be a long running task, like a fetch from keychain
    return true;
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
