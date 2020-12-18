import 'package:client/themes/theme.dart' as theme;
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onClick;
  final double width = 150;

  const CategoryCard(
      {Key key, @required this.label, @required this.image, this.onClick})
      : super(key: key);

  Widget postCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [theme.boxshadowSmall],
          color: Theme.of(context).colorScheme.surface,
        ),
        width: width,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
              ),
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.surface),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text(label)),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0)),
              boxShadow: [theme.boxshadow],
            ),
            child: Column(
              children: [
                Container(
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(10)),
                    child: Container(
                      child: postCard(context),
                    )),
              ],
            ),
          )),
    );
  }
}
