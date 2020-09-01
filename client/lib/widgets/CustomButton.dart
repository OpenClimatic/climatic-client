import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool secondary;

  CustomButton(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.secondary = false})
      : super(key: key);

  primary(BuildContext context) {
    return Container(
      height: 55,
      decoration: new BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: new BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
          child: Text(label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  second(BuildContext context) {
    return Container(
      height: 55,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          border: Border.all(
              width: 3, color: Theme.of(context).colorScheme.primary)),
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: Text(label,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onPressed();
        },
        child: secondary ? second(context) : primary(context));
  }
}
