import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class StaticTopBar extends StatelessWidget {
  final String label;
  final bool action;
  final bool back;
  final IconData actionIcon;
  final String actionRoute;
  final String backRoute;

  /// There a 3 variants:
  ///
  /// Used in : Dashboard and Discover
  ///
  /// StaticTopBar(back: false, label: "Label")
  ///
  /// Used in : Profile
  ///
  /// StaticTopBar(action: true, label: "Label", actionIcon: FeatherIcons.shield, actionRoute: "Settings", backRoute: "Home")
  ///
  /// Used in : Settings/page
  ///
  /// StaticTopBar(label: "Label", backRoute: "Home")
  const StaticTopBar(
      {Key key,
      @required this.label,
      this.action = false,
      this.back = true,
      this.actionIcon = FeatherIcons.check,
      this.actionRoute = "Settings",
      this.backRoute = "Home"})
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
          style: label.length < 16
              ? Theme.of(context).textTheme.headline2
              : Theme.of(context).textTheme.headline3,
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

  Widget noBackWithProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 18, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                label,
                style: label.length < 16
                    ? Theme.of(context).textTheme.headline2
                    : Theme.of(context).textTheme.headline4,
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, "Profile"),
                    child: Container(
                        height: 46,
                        width: 46,
                        child: Image.asset('assets/images/profile.png')),
                  )))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!back) {
      return noBackWithProfile(context);
    } else if (action) {
      return withAction(context);
    } else {
      return withoutAction(context);
    }
  }
}
