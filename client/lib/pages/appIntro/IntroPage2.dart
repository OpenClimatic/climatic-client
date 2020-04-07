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
          "assets/images/intro/2.png",
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
                    child: Text("Auf das wesentliche fokussieren",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  "Jeder kann seinen Einfluss auf die Umwelt verringern. Doch wo fängt man an und was bringe am meisten \n \nWeniger Autofahren, weniger Fleisch, weniger fliegen?",
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
                      builder: (BuildContext context) => (IntroPage3())));
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
