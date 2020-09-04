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

  Widget clickableActionCard(label, img, page, iconColor, bgColor) {
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

  Widget clickableCategoryCard(label, img, page, iconColor, bgColor) {
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

  Widget mainCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableCategoryCard("Ernährung", "assets/images/categories/food.png",
            3, theme.blue, theme.blueBG),
        clickableCategoryCard(
            "Haushalt",
            "assets/images/categories/haushalt.png",
            4,
            theme.blue,
            theme.blueBG),
        clickableCategoryCard("Konsum", "assets/images/categories/konsum.png",
            5, theme.purple, theme.purpleBG),
        clickableCategoryCard("Reisen", "assets/images/categories/reisen.png",
            6, theme.yellow, theme.yellowBG),
        clickableCategoryCard(
            "Transport",
            "assets/images/categories/transport.png",
            2,
            theme.blue,
            theme.blueBG),
      ],
    );
  }

  Widget transportCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard("Fahrrad", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("eBike", "assets/images/categories/haushalt.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            theme.blue, theme.blueBG),
      ],
    );
  }

  Widget haushaltCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard("Licht", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("Heizen", "assets/images/categories/haushalt.png",
            0, theme.blue, theme.blueBG),
      ],
    );
  }

  Widget foodCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard("Vegan", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard(
            "Unverpackt",
            "assets/images/categories/haushalt.png",
            0,
            theme.blue,
            theme.blueBG),
      ],
    );
  }

  Widget konsumCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard("Fahrrad", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("eBike", "assets/images/categories/haushalt.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            theme.blue, theme.blueBG),
      ],
    );
  }

  Widget reisenCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard("Flugzeug", "assets/images/categories/food.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("Zug", "assets/images/categories/haushalt.png", 0,
            theme.blue, theme.blueBG),
        clickableActionCard("Auto", "assets/images/categories/konsum.png", 0,
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
      mainCategory(),
      transportCategory(),
      foodCategory(),
      haushaltCategory(),
      konsumCategory(),
      reisenCategory()
    ];

    return Container(
        width: MediaQuery.of(context).size.width,
        child: _pageOptions[_selectedTab]);
  }
}
