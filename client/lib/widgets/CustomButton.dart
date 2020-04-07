import 'package:client/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool secondary;
  var color = snapshot.data.colorScheme.primary;

  CustomButton(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.secondary = false})
      : super(key: key);

  primary() {
    return Container(
      height: 55,
      decoration: new BoxDecoration(
          color: color, borderRadius: new BorderRadius.circular(10)),
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

  second() {
    return Container(
      height: 55,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          border: Border.all(width: 3, color: color)),
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: Text(label,
            style: TextStyle(
                color: color, fontSize: 20, fontWeight: FontWeight.bold)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onPressed();
        },
        child: secondary ? second() : primary());
  }
}
