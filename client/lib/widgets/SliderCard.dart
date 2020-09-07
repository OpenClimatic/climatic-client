import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  final String question;
  final List<String> selection;

  const SliderCard({
    Key key,
    this.question,
    this.selection,
  }) : super(key: key);

  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double rating = 0;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(widget.question, style: Theme.of(context).textTheme.headline3),
          Text(widget.selection[rating.toInt()],
              style: Theme.of(context).textTheme.bodyText2),
          Slider(
            value: rating,
            label: widget.selection[rating.toInt()],
            min: 0.0,
            max: widget.selection.length.toDouble() - 1,
            divisions: widget.selection.length - 1,
            onChanged: (newRating) {
              setState(() {
                rating = newRating;
              });
            },
          )
        ],
      ),
    );
  }
}
