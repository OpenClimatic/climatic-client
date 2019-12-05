import 'package:flutter/material.dart';
import 'IntroPage3.dart';

class IntroPage2 extends StatefulWidget {
  IntroPage2({Key key}) : super(key: key);

  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                        builder: (BuildContext context) => (IntroPage3())));
              },
            ),
          ],
        ),
      )),
    );
  }
}
