import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final customIcon = null;
  final label = null;
  final low = "low";
  final high = "high";
  final showPercent = false;

  const ProgressBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        child: Container(
            padding: EdgeInsets.all(5.0),
            width: 170,
            height: 70,
            decoration: new BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: new BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: new BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: new BorderRadius.circular(10)),
                  child: Center(
                    child: Icon(FeatherIcons.box),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "walking",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 220.0,
                      lineHeight: 14.0,
                      percent: 0.5,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: new BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: new BorderRadius.circular(10)),
                  child: Center(
                    child: Text("X"),
                  ),
                ),
              ],
            )));
  }
}
