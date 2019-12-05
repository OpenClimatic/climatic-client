import 'package:flutter/material.dart';
import './IntroPage1.dart';

class AppIntro extends StatefulWidget {
  AppIntro({Key key}) : super(key: key);

  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text("AppIntro press next to go through"),
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => IntroPage1()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
