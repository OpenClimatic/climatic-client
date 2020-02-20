import 'package:flutter/material.dart';
import 'package:client/themes/theme.dart';

class SliderCard extends StatefulWidget {
  final String question;
  final int divisions;

  const SliderCard({Key key, this.question, this.divisions})
      : super(key: key);

  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {

  double rating = 0;

  Widget build(BuildContext context) {
    return Card(
      color: snapshot.data.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(widget.question),
          Slider(
            value: rating,
            divisions: widget.divisions,
            onChanged: (newRating) {
              setState(() => rating = newRating);
            },
          )
        ],
      ),
    );
  }
}
