import 'package:flutter/material.dart';
import 'app/Dashboard.dart';
import 'app/Discover.dart';
import '../widgets/categories/Categories.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _pageOptions = [Dashboard(), Discover()];
  int _selectedTab = 0;

  _pullTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
          height: 7.0,
          width: 50.0,
          decoration: new BoxDecoration(
            color: Colors.grey[300],
            borderRadius: new BorderRadius.circular(40),
          )),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return FractionallySizedBox(
              heightFactor: 0.8,
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      _pullTab(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 5),
                        child: Center(
                          child: Text("Einsparung aufzeichnen",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(child: Categories()),
                    ],
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Align(
              child: SafeArea(
        child: _pageOptions[_selectedTab],
      ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _settingModalBottomSheet(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: new Icon(FeatherIcons.home),
                    color: _selectedTab == 0
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _selectedTab = 0;
                      });
                    }),
                IconButton(
                    icon: Icon(FeatherIcons.user),
                    color: _selectedTab == 2
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _selectedTab = 1;
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
