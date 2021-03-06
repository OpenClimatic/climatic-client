import 'package:client/themes/theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey1 =
    new GlobalKey<AnimatedCircularChartState>();

final GlobalKey<AnimatedCircularChartState> _chartKey2 =
    new GlobalKey<AnimatedCircularChartState>();

class DiagramCard extends StatefulWidget {
  DiagramCard({Key key}) : super(key: key);

  @override
  _DiagramCardState createState() => _DiagramCardState();
}

class _DiagramCardState extends State<DiagramCard> {
  Widget diagram() {
    List<CircularStackEntry> data1 = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(20.0, Theme.of(context).colorScheme.primary,
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
          new CircularSegmentEntry(20.0, theme.cGray, rankKey: 'max'),
        ],
        rankKey: 'kg of CO2 saved',
      ),
    ];

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
                labelStyle: Theme.of(context).textTheme.headline2),
            AnimatedCircularChart(
                key: _chartKey1,
                size: const Size(230.0, 230.0),
                initialChartData: data1,
                chartType: CircularChartType.Radial,
                edgeStyle: SegmentEdgeStyle.round,
                holeLabel: "\n \n \n Fortschritt: 88%",
                holeRadius: 70,
                labelStyle: Theme.of(context).textTheme.overline),
          ],
        ),
      )),
    );
  }

  Widget saved() {
    return Flexible(
      flex: 3,
      child: Center(
          child: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("1390kg", style: Theme.of(context).textTheme.headline2),
              Text(
                "co2 gespart",
                style: Theme.of(context).textTheme.bodyText2,
              )
            ]),
      )),
    );
  }

  Widget upperDiagram() {
    return Flexible(
        flex: 3,
        child: Container(
            child: Center(
          child: Row(
            children: <Widget>[diagram(), saved()],
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
              style: Theme.of(context).textTheme.bodyText2,
            )),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }

  Widget stats() {
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
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [theme.boxshadow],
            borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: <Widget>[upperDiagram(), stats()],
        ),
      ),
    );
  }
}
