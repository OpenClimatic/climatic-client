import 'package:flutter/material.dart';
import '../../services/storage.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:client/themes/theme.dart';
import 'package:client/widgets/TextField/TextField.dart';

class Allgemein extends StatefulWidget {
  Allgemein({Key key}) : super(key: key);

  @override
  _AllgemeinState createState() => _AllgemeinState();
}

class _AllgemeinState extends State<Allgemein> {
  onChanged(e) {
    print(e);
  }

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
              "Profil Einstellungen",
              style: snapshot.data.textTheme.headline2,
            ),
          ),
          backgroundColor: snapshot.data.colorScheme.background,
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                        label: "Username",
                        onChanged: (e) {
                          onChanged(e);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
