import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';
import 'package:client/services/storage.dart';
import 'package:client/pages/App.dart';

class IntroPage4 extends StatefulWidget {
  IntroPage4({Key key}) : super(key: key);

  @override
  _IntroPage4State createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  header() {
    return Container(
      child: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: const Color(0xff21D294),
            borderRadius: new BorderRadius.only(
                bottomRight: const Radius.circular(30.0),
                bottomLeft: const Radius.circular(30.0)),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: new Image.asset(
              "assets/images/intro/bg.png",
              scale: 2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Unsere Vorschläge",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Anhand deines CO2 Verbrauchs haben wir einige Vorschläge für dich erarbeitet.",
                  style: TextStyle(color: Colors.white, fontSize: 18))
            ],
          ),
        )
      ]),
    );
  }

  chooseAction() {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          child: Text("choose action"),
        ));
  }

  buttonRow() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
              child: chooseAction(),
            ),
            buttonRow()
          ],
        ),
      ),
    );
  }
}
