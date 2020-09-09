import 'package:client/models/Habit.dart';
import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  HabitCard({
    Key key,
    @required this.habit,
  }) : super(key: key);
  final Habit habit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Implement onTab for HabitCard
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 11.0),
        margin: EdgeInsets.all(9.0),
        width: 145,
        decoration: new BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [boxshadow],
            borderRadius: new BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              habit.category,
              style: Theme.of(context).textTheme.overline,
            ),
            Text(habit.title, style: Theme.of(context).textTheme.bodyText1),
            Padding(padding: EdgeInsets.all(6)),
            Expanded(child: Image(image: AssetImage(habit.imgPath))),
          ],
        ),
      ),
    );
  }
}
