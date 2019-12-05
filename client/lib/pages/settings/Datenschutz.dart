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
        appBar: AppBar(
          title: Text("Datenschutz"),
        ),
        body: Center(
          child: Text("Datenschutz"),
        ));
  }
}
