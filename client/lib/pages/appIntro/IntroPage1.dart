import 'package:flutter/material.dart';
import 'IntroPage2.dart';

class IntroPage1 extends StatefulWidget {
  IntroPage1({Key key}) : super(key: key);

  @override
  _IntroPage1State createState() => _IntroPage1State();
}

// Navigator.push(
//     context,
//     MaterialPageRoute(
//         builder: (BuildContext context) => (IntroPage2())));

class _IntroPage1State extends State<IntroPage1> {
  header() {
    return Container(
      height: 150,
      width: 150,
      color: Colors.red,
      child: Image.asset(
        "assets/images/intro/1.png",
      ),
    );
  }

  introText() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(children: <Widget>[
        Text("Gemein mehr bewirken!", style: TextStyle(fontSize: 25)),
        Text(
            "Privatpersonen können genauso, wie Politik oder Industrie etwas gegen den Klimawandel tun. \n Jeder kann einen Beitrag leisten, um gemein etwas zu bewirken")
      ]),
    );
  }

  buttonRow() {
    return Container(child: Text("hello"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xff21D294),
                  borderRadius: new BorderRadius.only(
                      bottomRight: const Radius.circular(30.0),
                      bottomLeft: const Radius.circular(30.0)),
                ),
                child: header()),
            introText(),
            buttonRow()
          ],
        ),
      ),
    );
  }
}
