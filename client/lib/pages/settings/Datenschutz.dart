import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';

class Datenschutz extends StatefulWidget {
  Datenschutz({Key key}) : super(key: key);

  @override
  _DatenschutzState createState() => _DatenschutzState();
}

class _DatenschutzState extends State<Datenschutz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          StaticTopBar(
              action: false, label: "Privatsphäre", backRoute: "Settings"),
          Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Wir von Climatic nehmen Privatsphäre sehr ernst. Niemanden gehen deine Daten etwas an nichteinmal uns. Deshalb haben wir beschlossen das diese App keine Daten mit uns teilt welche dich identifizieren könnten.",
                style: Theme.of(context).textTheme.bodyText1,
              ))
        ],
      ),
    );
  }
}
