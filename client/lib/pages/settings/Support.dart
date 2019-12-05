import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Support")),
        body: Center(
          child: Text("Support"),
        ));
  }
}
