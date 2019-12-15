import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget _header() {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: new BoxDecoration(
          color: Colors.grey[300],
          borderRadius: new BorderRadius.only(
              bottomRight: const Radius.circular(30.0),
              bottomLeft: const Radius.circular(30.0)),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Home",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        height: 56,
                        width: 56,
                        child: Image.asset('assets/images/picture.png'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: new BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: new BorderRadius.circular(10)),
                  child: Center(
                    child: Text("inside"),
                  )),
            ),
            Container(alignment: Alignment.center, child: Text("Dates"))
          ],
        ),
      ),
    );
  }

  Widget _habits() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Text(
            "Habits",
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _impact() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Text(
            "Your Impact",
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[_header(), _habits(), _impact()],
        ),
      ),
    ));
  }
}
