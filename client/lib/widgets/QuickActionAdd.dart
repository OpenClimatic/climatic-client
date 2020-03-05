import 'package:client/pages/app/SavingSplash.dart';
import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';
import 'SliderCard.dart';
import '../pages/SavingSplash.dart';
import 'CustomButton.dart';

class QuickActionAdd extends StatefulWidget {
  String imgPath;
  String question;
  List<String> selections;
  String title;

  QuickActionAdd(
      {Key key, this.imgPath, this.question, this.selections, this.title})
      : super(key: key);

  @override
  _QuickActionAddState createState() => _QuickActionAddState();
}

class _QuickActionAddState extends State<QuickActionAdd> {
  addAction() {
    print("adding action");
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => (SavingsSplash(
                  saved: 3.4,
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                widget.imgPath,
              ),
            ),
          ),
          Text(widget.title),
          SliderCard(question: widget.question, selection: widget.selections),
          CustomButton(
            label: "Add this Action",
            onPressed: addAction,
          )
        ],
      ),
    );
  }
}
