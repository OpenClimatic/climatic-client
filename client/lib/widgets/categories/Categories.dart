import 'package:client/themes/theme.dart' as theme;
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
  int _selectedTab = 1;
  String title;
  String imgPath;
  String question = "junge was machst du?";
  List<String> selections = ["1", "2", "3", "4", "5"];

  switchTo(page) {
    setState(() {
      _selectedTab = 2;
    });
  }

  Widget _clickableActionCard(label, img, page, iconColor, bgColor) {
    return (GestureDetector(
      onTap: () {
        if (page == 0) {
          setState(() {
            title = label;
            imgPath = img;
          });
        }
        print(title);
        setState(() {
          _selectedTab = page;
        });
      },
      child: ActionCard(
        label: label,
        image: img,
      ),
    ));
  }

  Widget _clickableCategoryCard(label, img, page, iconColor, bgColor) {
    return (GestureDetector(
      onTap: () {
        if (page == 0) {
          setState(() {
            title = label;
            imgPath = img;
          });
        }
        print(title);
        setState(() {
          _selectedTab = page;
        });
      },
      child: CategoryCard(
        label: label,
        image: img,
        iconColor: iconColor,
        bgColor: bgColor,
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
            3, theme.blue, theme.blueBG),
        _clickableCategoryCard(
            "Haushalt",
            "assets/images/categories/haushalt.png",
            4,
            theme.blue,
            theme.blueBG),
        _clickableCategoryCard("Konsum", "assets/images/categories/konsum.png",
            5, theme.purple, theme.purpleBG),
        _clickableCategoryCard("Reisen", "assets/images/categories/reisen.png",
            6, theme.yellow, theme.yellowBG),
      ],
    );
  }

  Widget _transportCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableActionCard("Fahrrad", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("eBike", "assets/images/categories/haushalt.png",
            0, theme.blue, theme.blueBG),
        _clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            theme.blue, theme.blueBG),
      ],
    );
  }

  Widget _haushaltCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableActionCard("Licht", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("Heizen", "assets/images/categories/haushalt.png",
            0, theme.blue, theme.blueBG),
      ],
    );
  }

  Widget _foodCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableActionCard("Vegan", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard(
            "Unverpackt",
            "assets/images/categories/haushalt.png",
            0,
            theme.blue,
            theme.blueBG),
      ],
    );
  }

  Widget _konsumCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableActionCard("Fahrrad", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("eBike", "assets/images/categories/haushalt.png",
            0, theme.blue, theme.blueBG),
        _clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            theme.blue, theme.blueBG),
      ],
    );
  }

  Widget _reisenCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        _clickableActionCard("Flugzeug", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("Zug", "assets/images/categories/haushalt.png", 0,
            theme.blue, theme.blueBG),
        _clickableActionCard("Auto", "assets/images/categories/konsum.png", 0,
            theme.blue, theme.blueBG),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pageOptions = [
      QuickActionAdd(
        imgPath: imgPath,
        title: title,
        question: question,
        selections: selections,
      ),
      _mainCategory(),
      _transportCategory(),
      _foodCategory(),
      _haushaltCategory(),
      _konsumCategory(),
      _reisenCategory()
    ];

    return Container(
        width: MediaQuery.of(context).size.width,
        child: _pageOptions[_selectedTab]);
  }
}
