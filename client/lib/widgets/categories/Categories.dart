import 'package:client/models/Attribute.dart';
import 'package:client/themes/theme.dart' as theme;
import 'package:client/widgets/ActionCard.dart';
import 'package:client/widgets/QuickActionAdd.dart';
import 'package:flutter/material.dart';
import '../categories/CategoryCard.dart';
import '../QuickActionAdd.dart';
import 'package:client/models/Attribute.dart';
import 'package:client/static/attributes.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedTab = 0;
  List<Attribute> attributes1 = [];
  Attribute attribute1;
  Attribute attribute2;

  Widget _clickableActionCard(Attribute attribute) {
    return (GestureDetector(
      onTap: () {
        if (_selectedTab == 2) {
          setState(() {
            _selectedTab = 3;
            attribute2 = attribute;
          });
        }
        if (_selectedTab == 1) {
          setState(() {
            _selectedTab = 2;
            attribute1 = attribute;
          });
        }
      },
      child: ActionCard(
        label: attribute.title,
        image: attribute.imgPath,
      ),
    ));
  }

  Widget _clickableCategoryCard(label, img, List<Attribute> attributes) {
    print(_selectedTab);
    return (GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = 1;
          attributes1 = attributes;
        });
      },
      child: CategoryCard(
        label: label,
        image: img,
      ),
    ));
  }

  Widget _mainCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableCategoryCard("Ernährung", "assets/images/categories/food.png",
            [autoBenzin, autoDiesel, bus]),
        _clickableCategoryCard(
            "Haushalt",
            "assets/images/categories/haushalt.png",
            [autoBenzin, autoDiesel, bus]),
        _clickableCategoryCard(
            "Transport",
            "assets/images/categories/reisen.png",
            [autoBenzin, autoDiesel, bus]),
        _clickableCategoryCard("Reisen", "assets/images/categories/reisen.png",
            [autoBenzin, autoDiesel, bus]),
      ],
    );
  }

  Widget _generateClickableActionCard(Attribute attribute) {
    String placeHolderImg = 'assets/images/categories/food.png';
    return _clickableActionCard(attribute);
  }

  List<Widget> _generateCards(List<Attribute> attributes) {
    List<Widget> cards = [];
    for (final attribute in attributes) {
      cards.add(_generateClickableActionCard(attribute));
    }
    return cards;
  }

  Widget _attribute1() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _generateCards(attributes1),
    );
  }

  Widget _attribute2() {
    return new Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 0.0, // gap between adjacent chips
        runSpacing: 2.0, // gap between lines
        alignment: WrapAlignment.center,
        children: _generateCards(attributes1));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pageOptions = [
      _mainCategory(),
      _attribute1(),
      _attribute2(),
      QuickActionAdd(
        attribute1: attribute1,
        attribute2: attribute2,
      )
    ];

    return Container(
        width: MediaQuery.of(context).size.width,
        child: _pageOptions[_selectedTab]);
  }
}
