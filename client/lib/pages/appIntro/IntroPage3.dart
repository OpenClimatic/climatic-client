import 'package:flutter/material.dart';
import 'IntroPage2.dart';

class IntroPage3 extends StatefulWidget {
  IntroPage3({Key key}) : super(key: key);

  @override
  _IntroPage3State createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Text("AppIntro press next to go through"),
            IconButton(
              icon: Icon(Icons.arrow_forward,
              tooltip: 'Navigate to the main screen',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/Home", (r) => false);
              },
            ),
          ],
        ),
      )),
    );
  }
}
