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
        builder: (BuildContext bc) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.65,
              padding: new EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                children: <Widget>[
                  _pullTab(),
                  Container(
                    child: new Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 8.0, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(90.0),
                          ),
                          onPressed: () => {},
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                FeatherIcons.truck,
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Transport"),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(90.0),
                          ),
                          onPressed: () => {},
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                FeatherIcons.zap,
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Power"),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(90.0),
                          ),
                          onPressed: () => {},
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                FeatherIcons.printer,
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Essen"),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(90.0),
                          ),
                          onPressed: () => {},
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                FeatherIcons.truck,
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Transport"),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(90.0),
                          ),
                          onPressed: () => {},
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                FeatherIcons.truck,
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Transport"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _settingModalBottomSheet(context);
        },
        tooltip: 'Increment',
        icon: Icon(Icons.add),
        label: Text("track saving"),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
      ),
    );
  }
}
