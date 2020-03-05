import 'package:flutter/material.dart';
import 'SliderCard.dart';
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
