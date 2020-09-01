import 'package:client/services/storage.dart';
import 'package:flutter/material.dart';

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
      return true;
    } else {
      return false;
    }
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
