import 'package:client/services/storage.dart';
import 'package:client/widgets/CustomButton.dart';
import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/widgets/TextField/TextField.dart';

class Allgemein extends StatefulWidget {
  Allgemein({Key key}) : super(key: key);

  @override
  _AllgemeinState createState() => _AllgemeinState();
}

class _AllgemeinState extends State<Allgemein> {
  String _username = "Klimaschützer/in";

  @override
  void initState() {
    super.initState();
    storage.read(key: NAME).then((value) {
      setState(() {
        _username = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      StaticTopBar(
          action: false, label: "Profil Einstellungen", backRoute: "Settings"),
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  height: 80,
                  width: 80,
                  child: Image.asset('assets/images/profile.png')),
              SizedBox(
                height: 50,
              ),
              TextFieldIcon(
                label: _username,
                onChanged: (e) {
                  _username = e;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    width: 210,
                    label: "Namen ändern",
                    onPressed: () {
                      print(_username);
                      storage.write(key: NAME, value: _username);
                      Navigator.pushNamedAndRemoveUntil(
                          context, "Home", (r) => false);
                    },
                  ))
            ],
          ),
        ),
      ),
    ]));
  }
}
