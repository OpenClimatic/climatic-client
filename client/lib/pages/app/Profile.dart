import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: IconButton(
          icon: Icon(FeatherIcons.settings),
          onPressed: () {
            Navigator.pushNamed(context, "/Settings");
          }),
    ));
  }
}
