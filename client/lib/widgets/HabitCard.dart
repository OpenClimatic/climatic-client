import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: 150,
          height: 50,
          decoration: new BoxDecoration(
              color: Colors.grey[300],
              borderRadius: new BorderRadius.circular(10)),
          child: Text("HabitCard"),
        ));
  }
}
