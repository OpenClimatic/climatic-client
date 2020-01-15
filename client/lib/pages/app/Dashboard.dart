import 'package:client/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
// import '../../widgets/flutter_circular_chart/lib/flutter_circular_chart.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import '../../widgets/HabitCard.dart';
import '../../widgets/ProgressBar.dart';

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
  List<CircularStackEntry> data1 = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(20.0, Colors.white, rankKey: 'saved'),
        new CircularSegmentEntry(50.0, Colors.transparent, rankKey: 'max'),
      ],
      rankKey: 'kg of CO2 saved',
    ),
  ];
  List<CircularStackEntry> data2 = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(20.0, Colors.transparent, rankKey: 'saved'),
        new CircularSegmentEntry(20.0, Colors.greenAccent, rankKey: 'max'),
      ],
      rankKey: 'kg of CO2 saved',
    ),
  ];

  Widget _header() {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.52,
        decoration: new BoxDecoration(
          color: snapshot.data.backgroundColor,
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
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Background-Dashboard.png"),
                        fit: BoxFit.cover,
                      ),
                      color: snapshot.data.primaryColor,
                      borderRadius: new BorderRadius.circular(10)),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        AnimatedCircularChart(
                            key: _chartKey2,
                            size: const Size(250.0, 250.0),
                            initialChartData: data2,
                            chartType: CircularChartType.Radial,
                            edgeStyle: SegmentEdgeStyle.round,
                            holeLabel: "1390 ",
                            holeRadius: 100,
                            labelStyle: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            )),
                        AnimatedCircularChart(
                            key: _chartKey1,
                            size: const Size(250.0, 250.0),
                            initialChartData: data1,
                            chartType: CircularChartType.Radial,
                            edgeStyle: SegmentEdgeStyle.round,
                            holeLabel: "\n \n \n kg of CO2 saved",
                            holeRadius: 90,
                            labelStyle: new TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            )),
                      ],
                    ),
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.center,
                child: CustomRadioButton(
                  buttonColor: Colors.transparent,
                  elevation: 0,
                  buttonLables: [
                    "Day",
                    "Week",
                    "Month",
                    "Year",
                  ],
                  buttonValues: [
                    "Day",
                    "Week",
                    "Month",
                    "Year",
                  ],
                  enableShape: true,
                  radioButtonValue: (value) {
                    print(value);
                  },
                  selectedColor: Theme.of(context).primaryColor,
                ))
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
                "Active plans",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: snapshot.data.text),
              )),
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
