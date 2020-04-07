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
      color: const Color(0xff21D294),
      height: MediaQuery.of(context).size.height * 0.5,
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
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text("Gemein mehr bewirken!",
                    style: TextStyle(fontSize: 25))),
            Container(
                child: Text(
              "Privatpersonen können genauso, wie Politik oder Industrie etwas gegen den Klimawandel tun. \n \nJeder kann einen Beitrag leisten, um gemein etwas zu bewirken",
              style: TextStyle(fontSize: 18),
            ))
          ]),
        ));
  }

  buttonRow() {
    return Container(child: Text("hello"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            header(),
            SizedBox(height: 20),
            introText(),
            buttonRow()
          ],
        ),
      ),
    );
  }
}
