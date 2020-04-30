import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("Container clicked");
        },
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: 200,
                  height: 100,
                  decoration: new BoxDecoration(
                      color: snapshot.data.colorScheme.surface,
                      boxShadow: [ boxshadow ],
                      borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Category",
                    style: snapshot.data.textTheme.overline,
                  ),
                )),
          ],
        ));
  }
}
