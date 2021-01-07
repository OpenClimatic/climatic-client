import 'package:client/models/Action.dart';
import 'package:client/themes/theme.dart' as theme;
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final ActionModel action;
  final Function onTab;
  final double width = 150;

  const ActionCard({Key key, @required this.action, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: GestureDetector(
          onTap: this.onTab,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(10),
              boxShadow: [theme.boxshadowSmall],
            ),
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.surface),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          this.action.imgPath,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            this.action.category,
                            style: Theme.of(context).textTheme.overline,
                          ),
                          SizedBox(height: 2),
                          Text(
                            this.action.title,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
