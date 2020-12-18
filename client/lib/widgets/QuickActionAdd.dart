import 'package:client/models/Action.dart';
import 'package:client/models/Attribute.dart';
import 'package:flutter/material.dart';
import 'package:client/widgets/SliderCard.dart';
import 'package:client/widgets/CustomButton.dart';

class QuickActionAdd extends StatelessWidget {
  final ActionModel action;
  final BuildContext context;

  const QuickActionAdd(this.action, this.context);

  addAction() {
    print("adding action");
    Navigator.pop(context);
    Navigator.pushNamed(context, "SavingSplash", arguments: 3.4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              action.imgPath,
              height: 125,
              width: 125,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 36),
        Text(action.title, style: Theme.of(context).textTheme.headline2),
        Padding(
            padding: EdgeInsets.fromLTRB(24, 12, 12, 20),
            child: Text(action.description,
                style: Theme.of(context).textTheme.bodyText1)),
        SizedBox(height: 20),
        SliderCard(
          attr: action.attribute,
        ),
        SizedBox(height: 20),
        CustomButton(
          label: "Jetzt aufzeichnen",
          onPressed: addAction,
          width: 235,
        )
      ],
    );
  }
}
