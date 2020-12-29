import 'package:client/models/Action.dart';
import 'package:client/models/Category.dart';
import 'package:client/resources/categories.dart';
import 'package:client/widgets/ActionCard.dart';
import 'package:client/widgets/QuickActionAdd.dart';
import 'package:flutter/material.dart';
import '../categories/CategoryCard.dart';
import '../QuickActionAdd.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedTab = 5;
  ActionModel selectedAction;

  Widget _clickableActionCard(ActionModel action) {
    return (GestureDetector(
      onTap: () {
        setState(() {
          selectedAction = action;
          _selectedTab = 6;
        });
      },
      child: ActionCard(
        label: action.title,
        image: action.imgPath,
      ),
    ));
  }

  Widget _clickableCategoryCard(Category category) {
    return (GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = category.id;
        });
      },
      child: CategoryCard(
        label: category.title,
        image: category.imgPath,
      ),
    ));
  }

  Widget _mainCategory() {
    List<Widget> _clickableCategoryCards = <Widget>[];
    for (Category category in categories) {
      _clickableCategoryCards.add(_clickableCategoryCard(category));
    }

    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _clickableCategoryCards,
    );
  }

  Widget _transportCategory() {
    List<Widget> _clickableActionCards = <Widget>[];
    for (ActionModel action in categories[0].actions) {
      _clickableActionCards.add(_clickableActionCard(action));
    }

    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _clickableActionCards,
    );
  }

  Widget _haushaltCategory() {
    List<Widget> _clickableActionCards = <Widget>[];
    for (ActionModel action in categories[1].actions) {
      _clickableActionCards.add(_clickableActionCard(action));
    }

    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _clickableActionCards,
    );
  }

  Widget _foodCategory() {
    List<Widget> _clickableActionCards = <Widget>[];
    for (ActionModel action in categories[2].actions) {
      _clickableActionCards.add(_clickableActionCard(action));
    }

    return new Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 0.0, // gap between adjacent chips
        runSpacing: 2.0, // gap between lines
        alignment: WrapAlignment.center,
        children: _clickableActionCards);
  }

  Widget _konsumCategory() {
    List<Widget> _clickableActionCards = <Widget>[];
    for (ActionModel action in categories[3].actions) {
      _clickableActionCards.add(_clickableActionCard(action));
    }

    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _clickableActionCards,
    );
  }

  Widget _reisenCategory() {
    List<Widget> _clickableActionCards = <Widget>[];
    for (ActionModel action in categories[4].actions) {
      _clickableActionCards.add(_clickableActionCard(action));
    }

    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _clickableActionCards,
    );
  }

  Widget _calculationScreen() {
    print(selectedAction);
    return QuickActionAdd(action: selectedAction, context: context);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pageOptions = [
      _transportCategory(),
      _foodCategory(),
      _haushaltCategory(),
      _konsumCategory(),
      _reisenCategory(),
      _mainCategory(),
      _calculationScreen(),
    ];

    return Container(
        width: MediaQuery.of(context).size.width,
        child: _pageOptions[_selectedTab]);
  }
}
