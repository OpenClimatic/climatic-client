import 'package:flutter/material.dart';
import 'package:client/widgets/SliderCard.dart';
import 'package:client/widgets/CustomButton.dart';

class QuickActionAdd extends StatefulWidget {
  final String imgPath;
  final String question;
  final List<String> selections;
  final String title;

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
    Navigator.pushNamed(context, "SavingSplash", arguments: 3.4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40),
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.imgPath,
              height: 125,
              width: 125,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        SliderCard(question: widget.question, selection: widget.selections),
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
