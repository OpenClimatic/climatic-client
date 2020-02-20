import 'package:flutter/material.dart';
import 'package:client/themes/theme.dart';

class SliderCard  extends StatelessWidget {

  String question;
  double value;

  Widget build(BuildContext context) {
    return Card(
      color: snapshot.data.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(question)
        ],
      ), 
    );
  }
}