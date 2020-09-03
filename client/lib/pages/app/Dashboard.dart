import 'package:client/services/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
// import '../../widgets/flutter_circular_chart/lib/flutter_circular_chart.dart';
import '../../widgets/HabitCard.dart';
import '../../widgets/DiagramCard/DiagramCard.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey1 =
    new GlobalKey<AnimatedCircularChartState>();

final GlobalKey<AnimatedCircularChartState> _chartKey2 =
    new GlobalKey<AnimatedCircularChartState>();

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String _username = "Klimaschützer/in";

  @override
  void initState() {
    super.initState();
    storage.read(key: NAME).then((value) {
      setState(() {
        _username = value.split(" ")[0];
      });
    });
  }

  Widget _header() {
    return Container(
      child: Container(
        height: 370,
        decoration: new BoxDecoration(
          color: Theme.of(context).colorScheme.background,
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
                    Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Hallo, " + _username,
                          style: Theme.of(context).textTheme.headline2,
                        )),
                    FlatButton(
                      onPressed: () => Navigator.pushNamed(context, "/Profile"),
                      child: Container(
                          height: 46,
                          width: 46,
                          child: Image.asset('assets/images/profile.png')),
                    )
                  ],
                ),
              ),
            ),
            DiagramCard(),
          ],
        ),
      ),
    );
  }

  Widget _habits() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text("Active plans",
                  style: Theme.of(context).textTheme.headline3)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            height: 175,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              children: <Widget>[HabitCard(), HabitCard(), HabitCard()],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[_header(), _habits()],
            ),
          ),
        ));
  }
}
