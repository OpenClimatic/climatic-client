import 'package:flutter/material.dart';
import 'app/Dashboard.dart';
import 'app/Profile.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _pageOptions = [Dashboard(), Profile()];
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Align(
              child: SafeArea(
        child: _pageOptions[_selectedTab],
      ))),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: new Icon(FeatherIcons.home),
                color: _selectedTab == 0 ? Colors.blue : Colors.grey,
                onPressed: () {
                  setState(() {
                    _selectedTab = 0;
                  });
                }),
            IconButton(
                icon: Icon(FeatherIcons.user),
                color: _selectedTab == 2 ? Colors.blueAccent : Colors.grey,
                onPressed: () {
                  setState(() {
                    _selectedTab = 1;
                  });
                })
          ],
        ),
      ),
    );
  }
}
