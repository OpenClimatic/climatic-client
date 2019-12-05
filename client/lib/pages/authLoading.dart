import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class authLoading extends StatefulWidget {
  authLoading({Key key}) : super(key: key);

  @override
  _authLoadingState createState() => _authLoadingState();
}

class _authLoadingState extends State<authLoading> {
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
    /// other way there is no user logged.
    return Scaffold(
      body: Center(
        child: Text("loading"),
      ),
    );
  }
}
