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
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(widget.question),
          Text(widget.selection[rating.toInt()]),
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
