import 'package:flutter/material.dart';
import 'IntroPage2.dart';

class IntroPage1 extends StatefulWidget {
  IntroPage1({Key key}) : super(key: key);

  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Text("AppIntro press next to go through"),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              tooltip: 'Navigate to the main screen',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => (IntroPage2())));
              },
            ),
          ],
        ),
      )),
    );
  }
}
