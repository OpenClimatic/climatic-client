import 'package:client/models/Category.dart';
import 'package:client/themes/theme.dart' as theme;
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function onTab;
  final double width = 150;

  const CategoryCard({Key key, @required this.category, this.onTab})
      : super(key: key);

  Widget _postCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [theme.boxshadowSmall],
          color: Theme.of(context).colorScheme.surface,
        ),
        width: this.width,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                this.category.imgPath,
              ),
            ),
            Container(
              width: this.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.surface),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text(this.category.title)),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: this.onTab,
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
                      child: _postCard(context),
                    )),
              ],
            ),
          ),
        ));
  }
}
