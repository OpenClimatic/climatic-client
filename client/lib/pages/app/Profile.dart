import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

Widget _header(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 15.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: snapshot.data.colorScheme.surface,
        boxShadow: [
         boxshadow 
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              height: 80,
              width: 80,
              child: Image.asset('assets/images/profile.png')),
          Container(
            width: 200,
            child: Text(
              "Ricardo Joseph",
              style: snapshot.data.textTheme.headline3,
            ),
          )
        ],
      ),
    ),
  );
}

class _ProfileState extends State<Profile> {
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
                  color: snapshot.data.colorScheme.onBackground,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                "Profile",
                style: snapshot.data.textTheme.headline2,
              ),
            ),
            backgroundColor: snapshot.data.colorScheme.background,
            elevation: 0,
            actions: <Widget>[
              // action button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                child: IconButton(
                  icon: Icon(FeatherIcons.settings,
                      size: 26, color: snapshot.data.colorScheme.onBackground),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Settings");
                  },
                ),
              ),
            ]),
        body: Center(
            child: Column(children: <Widget>[
          _header(context),
        ])));
  }
}
