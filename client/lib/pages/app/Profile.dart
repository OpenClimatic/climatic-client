import 'package:client/services/storage.dart';
import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

  _header() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [boxshadow],
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
                _username,
                style: Theme.of(context).textTheme.headline3,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: IconButton(
                icon: Icon(
                  FeatherIcons.arrowLeftCircle,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                "Profile",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            actions: <Widget>[
              // action button
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 15, 0),
                child: IconButton(
                  icon: Icon(
                    FeatherIcons.settings,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Settings");
                  },
                ),
              ),
            ]),
        body: Center(
            child: Column(children: <Widget>[
          _header(),
        ])));
  }
}
