import 'package:client/models/Action.dart';
import 'package:client/models/Attribute.dart';
import 'package:client/models/CounterPart.dart';
import 'package:flutter/material.dart';
import 'package:client/widgets/SliderCard.dart';
import 'package:client/widgets/CustomButton.dart';

class QuickActionAdd extends StatefulWidget {
  final ActionModel action;
  final BuildContext context;

  const QuickActionAdd(
      {Key key, @required this.action, @required this.context});

  @override
  _QuickActionAddState createState() => _QuickActionAddState();
}

class _QuickActionAddState extends State<QuickActionAdd> {
  String _currentCp;

  DropdownButton<String> _addDropdown(List<CounterPart> cps) {
    _currentCp = cps[0].title;
    return DropdownButton<String>(
        value: _currentCp,
        items: cps.map<DropdownMenuItem<String>>((value) {
          return new DropdownMenuItem<String>(
            value: value.title,
            child: new Text(value.title),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _currentCp = newValue;
          });
        });
  }

  _insertSliderIfNeeded(Attribute attr) {
    if (attr == null) {
      return SizedBox(height: 0);
    } else {
      return SliderCard(
        attr: widget.action.attribute,
      );
    }
  }

  _insertDropdownIfNeeded(List<CounterPart> cps) {
    if (cps.isEmpty) {
      return SizedBox(height: 0);
    } else {
      return _addDropdown(cps);
    }
  }

  addAction() {
    print("adding action");
    Navigator.pop(context);
    Navigator.pushNamed(context, "SavingSplash", arguments: 3.4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.action.imgPath,
              height: 125,
              width: 125,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 36),
        Text(widget.action.title, style: Theme.of(context).textTheme.headline2),
        Padding(
            padding: EdgeInsets.fromLTRB(24, 12, 12, 20),
            child: Text(widget.action.description,
                style: Theme.of(context).textTheme.bodyText1)),
        SizedBox(height: 10),
        _insertDropdownIfNeeded(widget.action.counterParts),
        SizedBox(height: 10),
        _insertSliderIfNeeded(widget.action.attribute),
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
