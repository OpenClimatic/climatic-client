import 'package:client/themes/theme.dart';
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
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: Container(
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
                  ))),
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text(habit.shortDescription,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
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
                          "Impact",
                          style: snapshot.data.textTheme.bodyText2.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width * 0.9,
                        lineHeight: 12.0,
                        percent: 0.5,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text("low"), Text("high")],
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
                                "Expenses",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.9,
                              lineHeight: 12.0,
                              percent: 0.5,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.grey[200],
                              progressColor: Theme.of(context).primaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[Text("low"), Text("high")],
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
                                "Difficulty",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.9,
                              lineHeight: 12.0,
                              percent: 0.5,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.grey[200],
                              progressColor: Theme.of(context).primaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[Text("low"), Text("high")],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Why do this?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(habit.description,
                            style: TextStyle(fontSize: 18, height: 1.2)),
                      ),
                      Center(
                        child: CustomButton(
                          label: "I will do it!",
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
    ));
  }
}
