import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';
import 'package:client/services/storage.dart';
import 'package:client/pages/App.dart';

class IntroPage3 extends StatefulWidget {
  IntroPage3({Key key}) : super(key: key);

  @override
  _IntroPage3State createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
          "assets/images/intro/3.png",
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
                    child: Text("Einfache Aktionen mit großen Auswirkungen!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  "Privatpersonen können genauso, wie Politik oder Indsutrie etwas gegen den Klimawandel tun.\n \nJeder kann einen Beitrag leisten, um gemeinsam etwas zu bewirken.",
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
              storage.write(key: FINISHED_INTRO, value: "true");
              Navigator.pushNamedAndRemoveUntil(context, "/Home", (r) => false);
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
