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
    return Row(children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeftCircle,
            size: 32,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName(backRoute));
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(4, 13, 0, 0),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ]);
  }

  Widget withAction(BuildContext context) {
    return Row(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeftCircle,
            size: 32,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName(backRoute));
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 12, 15, 0),
        child: IconButton(
            icon: Icon(
              this.actionIcon,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, actionRoute);
            }),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return action ? withAction(context) : withoutAction(context);
  }
}
