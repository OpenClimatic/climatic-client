import 'package:flutter/material.dart';
import '../../models/Habit.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DiscoverHabitDetailedView extends StatelessWidget {
  final Habit habit;

  const DiscoverHabitDetailedView({Key key, @required this.habit})
      : super(key: key);

  Widget _stats() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "walking",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              LinearPercentIndicator(
                width: 220.0,
                lineHeight: 14.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
