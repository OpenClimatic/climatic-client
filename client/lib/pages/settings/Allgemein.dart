import 'package:flutter/material.dart';
import '../../services/storage.dart';

class Allgemein extends StatefulWidget {
  Allgemein({Key key}) : super(key: key);

  @override
  _AllgemeinState createState() => _AllgemeinState();
}

class _AllgemeinState extends State<Allgemein> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Allgemein")),
        body: Center(
          child: FlatButton(
            color: Colors.green,
            onPressed: () async {
              await storage.delete(key: FINISHED_INTRO);
              Navigator.pushNamed(context, "/");
            },
            child: Text("LOGOUT"),
          ),
        ));
  }
}
