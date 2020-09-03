import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';
import 'package:client/pages/appIntro/IntroPage4.dart';

class IntroPage3 extends StatefulWidget {
  IntroPage3({Key key}) : super(key: key);

  @override
  _IntroPage3State createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
          "assets/images/intro/3.png",
          scale: 2,
          fit: BoxFit.none,
        ),
      ),
    );
  }

  introText() {
    return Column(children: <Widget>[
      Text("Einfache Aktionen mit großen Auswirkungen!",
          style: Theme.of(context).textTheme.headline2),
      SizedBox(
        height: 10,
      ),
      Container(
        child: Text(
            "Privatpersonen können genauso, wie Politik oder Indsutrie etwas gegen den Klimawandel tun.\n \nJeder kann einen Beitrag leisten, um gemeinsam etwas zu bewirken.",
            style: Theme.of(context).textTheme.bodyText1),
      )
    ]);
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
            Navigator.pop(context);
          },
        ),
        CustomButton(
          width: 140,
          label: "Weiter",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => (IntroPage4())));
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
              padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
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
