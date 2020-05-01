import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart';

class Datenschutz extends StatefulWidget {
  Datenschutz({Key key}) : super(key: key);

  @override
  _DatenschutzState createState() => _DatenschutzState();
}

class _DatenschutzState extends State<Datenschutz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snapshot.data.colorScheme.background,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: IconButton(
            icon: Icon(
              FeatherIcons.arrowLeftCircle,
              size: 32,
              color: snapshot.data.colorScheme.onSurface,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0.0, 0),
          child: Text(
            "Privatsphäre",
            style: snapshot.data.textTheme.headline2,
          ),
        ),
        backgroundColor: snapshot.data.colorScheme.background,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Text(
          "Wir von Climatic nehmen Privatsphäre sehr ernst. Niemanden gehen deine Daten etwas an nichteinmal uns. Deshalb haben wir beschlossen das diese App keine Daten mit uns teilt welche dich identifizieren könnten.",
          style: snapshot.data.textTheme.bodyText1,
        ),
      ),
    );
  }
}
