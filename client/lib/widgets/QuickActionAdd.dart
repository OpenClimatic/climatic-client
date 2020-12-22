import 'package:flutter/material.dart';
import 'package:client/widgets/SliderCard.dart';
import 'package:client/widgets/CustomButton.dart';
import 'package:client/models/Attribute.dart';

class QuickActionAdd extends StatefulWidget {
  final Attribute attribute1;
  final Attribute attribute2;

  QuickActionAdd({Key key, this.attribute1, this.attribute2}) : super(key: key);

  @override
  _QuickActionAddState createState() => _QuickActionAddState();
}

class _QuickActionAddState extends State<QuickActionAdd> {
  double value = 0.0;
  double actualSelection = 0;

  addAction() {
    Navigator.pop(context);
    Navigator.pushNamed(context, "SavingSplash", arguments: 3.4);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.attribute1 != null && widget.attribute2 != null) {
      return Column(
        children: <Widget>[
          SizedBox(height: 40),
          // Container(
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image.asset(
          //       widget.imgPath,
          //       height: 125,
          //       width: 125,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SizedBox(height: 20),
          SliderCard(
            question: widget.attribute1.title +
                ' ersetzt mit ' +
                widget.attribute2.title,
            selection: widget.attribute1.selection,
            perUnit: widget.attribute1.perUnit,
            value: value,
            onChanged: (newValue) {
              var actual = widget.attribute1.selection[newValue.round()]
              setState(() {
                value = newValue;
                actualSelection = actual;
              });
            },
          ),
          SizedBox(height: 20),
          CustomButton(
            label: "Jetzt aufzeichnen",
            onPressed: addAction,
            width: 235,
          )
        ],
      );
    } else {
      return null;
    }
  }
}
