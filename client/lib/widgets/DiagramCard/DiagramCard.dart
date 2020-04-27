import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:client/themes/theme.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey1 =
    new GlobalKey<AnimatedCircularChartState>();

// just a shortcut for easier use
var theme = snapshot.data;

final GlobalKey<AnimatedCircularChartState> _chartKey2 =
    new GlobalKey<AnimatedCircularChartState>();

class DiagramCard extends StatefulWidget {
  DiagramCard({Key key}) : super(key: key);

  @override
  _DiagramCardState createState() => _DiagramCardState();
}

class _DiagramCardState extends State<DiagramCard> {
  List<CircularStackEntry> data1 = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(20.0, theme.colorScheme.primary,
            rankKey: 'saved'),
        new CircularSegmentEntry(50.0, Colors.transparent, rankKey: 'max'),
      ],
      rankKey: 'kg of CO2 saved',
    ),
  ];
  List<CircularStackEntry> data2 = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(20.0, Colors.transparent, rankKey: 'saved'),
        new CircularSegmentEntry(20.0, Colors.grey.shade200, rankKey: 'max'),
      ],
      rankKey: 'kg of CO2 saved',
    ),
  ];

  Widget Diagram() {
    return Flexible(
      flex: 5,
      child: Container(
          child: Center(
        child: Stack(
          children: <Widget>[
            AnimatedCircularChart(
                key: _chartKey2,
                size: const Size(230.0, 230.0),
                initialChartData: data2,
                chartType: CircularChartType.Radial,
                edgeStyle: SegmentEdgeStyle.round,
                holeLabel: "Level 3",
                holeRadius: 69,
                labelStyle: theme.textTheme.headline2),
            AnimatedCircularChart(
                key: _chartKey1,
                size: const Size(230.0, 230.0),
                initialChartData: data1,
                chartType: CircularChartType.Radial,
                edgeStyle: SegmentEdgeStyle.round,
                holeLabel: "\n \n \n 88% abgeschlossen",
                holeRadius: 70,
                labelStyle: new TextStyle(
                  // HIER MUSS EIN GLOBAL THEME STYLE REIN NAMENS SMALL!
                  color: Colors.black,
                  fontSize: 12.0,
                )),
          ],
        ),
      )),
    );
  }

  Widget Saved() {
    return Flexible(
      flex: 3,
      child: Center(
          child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("1390kg", style: theme.textTheme.headline2),
              Text(
                "co2 gespart",
                style: TextStyle(
                  // HIER MUSS EIN GLOBAL THEME STYLE REIN NAMENS SMALL!
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              )
            ]),
      )),
    );
  }

  Widget UpperDiagram() {
    return Flexible(
        flex: 3,
        child: Container(
            child: Center(
          child: Row(
            children: <Widget>[Diagram(), Saved()],
          ),
        )));
  }

  Widget stat(stat, label) {
    return Row(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              stat.toString(),
              style: theme.textTheme.bodyText1,
            )),
        Text(
          label,
          style: theme.textTheme.bodyText1,
        )
      ],
    );
  }

  Widget Stats() {
    return Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                stat(4, "Aktivitäten"),
                stat(12, "Gewohnheiten")
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 275,
        decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  10.0, // horizontal, move right 10
                  10.0, // vertical, move down 10
                ),
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: <Widget>[UpperDiagram(), Stats()],
        ),
      ),
    );
  }
}
