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
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
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
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        builder: (BuildContext bc) {
          return SafeArea(
              child: FractionallySizedBox(
                  heightFactor: 0.95,
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      _pullTab(),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 5),
                        child: Center(
                          child: Text("Einsparung aufzeichnen",
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                      Container(child: Categories()),
                    ],
                  ))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pageOptions[_selectedTab],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "SelectCategoryView");
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
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
                    color: _selectedTab == 1
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
