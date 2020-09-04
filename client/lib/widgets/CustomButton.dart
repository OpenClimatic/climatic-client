import 'package:flutter/material.dart';
import 'package:client/themes/theme.dart' as theme;

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool secondary;
  final double width;

  const CustomButton(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.secondary = false,
      this.width = 150})
      : super(key: key);

  primary(BuildContext context) {
    return Container(
      height: 50,
      width: this.width,
      decoration: new BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          boxShadow: [theme.boxshadow],
          borderRadius: new BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
          child: Text(label, style: Theme.of(context).textTheme.button),
        ),
      ),
    );
  }

  second(BuildContext context) {
    return Container(
      width: this.width,
      height: 50,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          border: Border.all(
              width: 3, color: Theme.of(context).colorScheme.primary)),
      child: Center(
          child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 0, bottom: 0),
              child: Text(label,
                  style: Theme.of(context).textTheme.button.copyWith(
                      color: Theme.of(context).colorScheme.primary)))),
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
