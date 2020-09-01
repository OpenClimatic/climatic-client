import 'package:flutter/material.dart';
import 'package:client/themes/theme.dart';

class TextFieldIcon extends StatelessWidget {
  final String label;
  final String value;
  final Function onChanged;

  TextFieldIcon({Key key, this.label, this.value, @required this.onChanged})
      : super(key: key);
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [boxshadow],
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: _textFieldController,
        onChanged: (e) {
          onChanged(e);
        },
        maxLines: 1,
        decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            hintText: label,
            //add icon outside input field
            prefixIcon: Icon(Icons.person),
            fillColor: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}
