import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Habit.dart';
import '../pages/habit/DiscoverHabitDetailedView.dart';
import '../pages/transitions/SizeRoute.dart';

class HabitPostCard extends StatelessWidget {
  final Habit habit;

  const HabitPostCard({Key key, @required this.habit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (_) => DiscoverHabitDetailedView(habit: habit)));
        },
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    height: 200,
                    decoration: new BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: new BorderRadius.circular(10)),
                    child: Hero(
                      tag: habit.id,
                      child: Image.asset(habit.imgPath),
                    ))),
          ],
        ));
  }
}
