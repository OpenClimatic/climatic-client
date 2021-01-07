import 'package:client/models/Action.dart';
import 'package:client/models/Category.dart';
import 'package:client/widgets/ActionCard.dart';
import 'package:client/widgets/QuickActionAdd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectActionView extends StatelessWidget {
  final Category category;

  const SelectActionView({Key key, @required this.category}) : super(key: key);

  List<Widget> _buildActionCards(BuildContext context) {
    List<Widget> _actionCards = <Widget>[];
    for (ActionModel action in this.category.actions) {
      _actionCards.add(ActionCard(
        action: action,
        onTab: () => {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (_) =>
                      QuickActionAdd(action: action, context: context)))
        },
      ));
    }
    return _actionCards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 0,
                  runSpacing: 2,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: _buildActionCards(context),
                ))));
  }
}
