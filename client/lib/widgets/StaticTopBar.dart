import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class StaticTopBar extends StatelessWidget {
  final String label;
  final bool action;
  final IconData actionIcon;
  final String actionRoute;
  final String backRoute;

  const StaticTopBar(
      {Key key,
      @required this.label,
      @required this.action,
      this.actionIcon,
      this.actionRoute,
      @required this.backRoute})
      : super(key: key);

  Widget withoutAction(BuildContext context) {
    return SafeArea(
        child: Row(children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.2,
        padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
        child: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeftCircle,
            size: 30,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName(backRoute));
          },
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ]));
  }

  Widget withAction(BuildContext context) {
    return SafeArea(
        child: Row(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 0.2,
        padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
        child: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeftCircle,
            size: 30,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName(backRoute));
          },
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      Container(
          width: MediaQuery.of(context).size.width * 0.2,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: IconButton(
              icon: Icon(
                this.actionIcon,
                size: 28,
              ),
              onPressed: () {
                Navigator.pushNamed(context, actionRoute);
              })),
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return action ? withAction(context) : withoutAction(context);
  }
}
