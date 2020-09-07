import 'package:client/themes/theme.dart' as theme;
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String label;
  final String image;
  final String category;
  final Function onClick;
  final double width = 150;

  const ActionCard(
      {Key key,
      @required this.label,
      @required this.image,
      this.category,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
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
                        image,
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
                          "Kategorie",
                          style: Theme.of(context).textTheme.overline,
                        ),
                        SizedBox(height: 2),
                        Text(
                          label,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
