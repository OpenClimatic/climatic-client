import 'package:client/models/Category.dart';
import 'package:client/pages/quickActionView/SelectActionView.dart';
import 'package:client/resources/categories.dart';
import 'package:client/widgets/categories/CategoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCategoryView extends StatelessWidget {
  const SelectCategoryView({Key key}) : super(key: key);

  List<Widget> _buildCategoryCards(BuildContext context) {
    List<Widget> _categoryCards = <Widget>[];
    for (Category category in categories) {
      _categoryCards.add(CategoryCard(
          category: category,
          onTab: () => {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (_) => SelectActionView(category: category)))
              }));
    }
    return _categoryCards;
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
                children: _buildCategoryCards(context),
              ))),
    );
  }
}
