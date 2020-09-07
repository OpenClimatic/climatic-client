import 'package:client/themes/theme.dart' as theme;
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFlatButton extends StatelessWidget {
  final bool link;
  final String url;
  final IconData icon;
  final String label;
  final String pageRoute;
  final Color iconColor;
  final Color iconBGColor;

  const CustomFlatButton(
      {Key key,
      this.link = false,
      this.url,
      @required this.icon,
      @required this.label,
      this.pageRoute,
      this.iconColor = theme.cBlue,
      this.iconBGColor = theme.cBlueBG})
      : super(key: key);

  _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        link ? _launchURL() : Navigator.pushNamed(context, pageRoute);
      },
      child: Container(
          height: 70,
          margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [theme.boxshadowSmall],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: iconBGColor),
                    child: Icon(icon, color: iconColor)),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  width: 200,
                  child:
                      Text(label, style: Theme.of(context).textTheme.subtitle1),
                ),
              ]),
              Icon(
                FeatherIcons.chevronRight,
                color: Theme.of(context).colorScheme.onSurface,
              )
            ],
          )),
    );
  }
}
