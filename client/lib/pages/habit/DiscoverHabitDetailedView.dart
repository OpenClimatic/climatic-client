import 'package:client/themes/theme.dart' as theme;
import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';
import '../../models/Habit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../widgets/CustomButton.dart';

class DiscoverHabitDetailedView extends StatelessWidget {
  final Habit habit;

  const DiscoverHabitDetailedView({Key key, @required this.habit})
      : super(key: key);

  onButtonPressed() {
    print("I WILL DO IT");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Hero(
                tag: habit.id,
                child: Image.asset(
                  habit.imgPath,
                  fit: BoxFit.cover,
                ),
              )),
          Container(
              padding: EdgeInsets.all(22.0),
              child: Text(habit.shortDescription,
                  style: Theme.of(context).textTheme.bodyText1)),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Auswirkung",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width * 0.9,
                        lineHeight: 12.0,
                        percent: 0.5,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: theme.cGray,
                        progressColor: Theme.of(context).colorScheme.primary,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("niedrig",
                              style: Theme.of(context).textTheme.overline),
                          Text("hoch",
                              style: Theme.of(context).textTheme.overline)
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Kosten",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.9,
                              lineHeight: 12.0,
                              percent: 0.5,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: theme.cGray,
                              progressColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("niedrig",
                                    style:
                                        Theme.of(context).textTheme.overline),
                                Text("hoch",
                                    style: Theme.of(context).textTheme.overline)
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Schwierigkeit",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.9,
                              lineHeight: 12.0,
                              percent: 0.5,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: theme.cGray,
                              progressColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("niedrig",
                                    style:
                                        Theme.of(context).textTheme.overline),
                                Text("hoch",
                                    style: Theme.of(context).textTheme.overline)
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Wieso?",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(habit.description,
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Container(
                        margin: EdgeInsets.all(25),
                        alignment: Alignment.center,
                        child: CustomButton(
                          label: "Lass es uns angehen!",
                          width: 250,
                          onPressed: onButtonPressed,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
