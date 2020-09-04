import 'package:client/widgets/CustomButton.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image.asset('assets/icon/icon.png'),
              height: 160,
              width: 160,
            ),
            Container(
                child: Column(
              children: <Widget>[
                Text(
                  "Willkommen bei",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  "Climatic",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            )),
            CustomButton(
                label: "Lass uns starten",
                width: 250,
                onPressed: () {
                  Navigator.pushNamed(context, "AppIntro/1");
                })
          ],
        ),
      ),
    );
  }
}
