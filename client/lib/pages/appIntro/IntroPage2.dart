import 'package:flutter/material.dart';
import 'IntroPage3.dart';
import '../../widgets/CustomButton.dart';

class IntroPage2 extends StatefulWidget {
  IntroPage2({Key key}) : super(key: key);

  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  header() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff21D294),
        borderRadius: new BorderRadius.only(
            bottomRight: const Radius.circular(30.0),
            bottomLeft: const Radius.circular(30.0)),
      ),
      child: Container(
        child: new Image.asset(
          "assets/images/intro/2.png",
          scale: 2,
          fit: BoxFit.none,
        ),
      ),
    );
  }

  introText() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Auf das wesentliche fokussieren",
                style: Theme.of(context).textTheme.headline2),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              "Jeder kann seinen Einfluss auf die Umwelt verringern. Doch wo fängt man an und was bringe am meisten\n\nWeniger Autofahren, weniger Fleisch, weniger fliegen?",
              style: Theme.of(context).textTheme.bodyText1,
            ))
          ]),
    );
  }

  buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          width: 130,
          secondary: true,
          label: "Zurück",
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName("AppIntro/1"));
          },
        ),
        CustomButton(
          width: 140,
          label: "Weiter",
          onPressed: () {
            Navigator.pushNamed(context, "AppIntro/3");
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          header(),
          Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: introText()),
          Container(
              height: MediaQuery.of(context).size.height * 0.15,
              padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
              child:
                  Align(alignment: Alignment.bottomCenter, child: buttonRow())),
        ],
      ),
    );
  }
}
