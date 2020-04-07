import 'package:flutter/material.dart';
import 'IntroPage2.dart';
import '../../widgets/CustomButton.dart';

class IntroPage1 extends StatefulWidget {
  IntroPage1({Key key}) : super(key: key);

  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  header() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: const Color(0xff21D294),
        borderRadius: new BorderRadius.only(
            bottomRight: const Radius.circular(30.0),
            bottomLeft: const Radius.circular(30.0)),
      ),
      child: Container(
        height: 50,
        width: 50,
        child: new Image.asset(
          "assets/images/intro/1.png",
          scale: 2,
          fit: BoxFit.none,
        ),
      ),
    );
  }

  introText() {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text("Gemeinsam mehr bewirken!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  "Privatpersonen können genauso, wie Politik oder Industrie etwas gegen den Klimawandel tun. \n \nJeder kann einen Beitrag leisten, um gemein etwas zu bewirken",
                  style: TextStyle(fontSize: 18, height: 1.15),
                ))
              ]),
        ));
  }

  buttonRow() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomButton(
            secondary: true,
            label: "zurück",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CustomButton(
            label: "Weiter",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => (IntroPage2())));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            header(),
            SizedBox(height: 10),
            Expanded(
              child: introText(),
            ),
            buttonRow()
          ],
        ),
      ),
    );
  }
}
