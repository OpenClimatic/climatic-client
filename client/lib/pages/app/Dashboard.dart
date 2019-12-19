import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import '../../widgets/HabitCard.dart';
import '../../widgets/ProgressBar.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey =
    new GlobalKey<AnimatedCircularChartState>();

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<CircularStackEntry> data = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'saved'),
        new CircularSegmentEntry(1000.0, Colors.green[200], rankKey: 'max'),
      ],
      rankKey: 'kg of CO2 saved',
    ),
  ];

  Widget _header() {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
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
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: new BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: new BorderRadius.circular(10)),
                  child: Center(
                    child: AnimatedCircularChart(
                        key: _chartKey,
                        size: const Size(250.0, 250.0),
                        initialChartData: data,
                        chartType: CircularChartType.Radial,
                        edgeStyle: SegmentEdgeStyle.round,
                        holeLabel: "1390 \n kg of CO2 saved",
                        holeRadius: 100,
                        labelStyle: new TextStyle(
                          color: Colors.blueGrey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        )),
                  )),
            ),
            Container(alignment: Alignment.center, child: Text("Dates"))
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
              child: Text(
                "Habits",
                style:
                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            height: 200,
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

  Widget _impact() {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  "Your Impact",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            Container(
                child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                ProgressBar(),
                ProgressBar(),
                ProgressBar(),
                ProgressBar()
              ],
            ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            _header(),
            _habits(),
            _impact(),
          ],
        ),
      ),
    ));
  }
}
