import 'package:client/themes/theme.dart';
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
            3, cc.blue, cc.blueBG),
        clickableCategoryCard("Haushalt",
            "assets/images/categories/haushalt.png", 4, cc.blue, cc.blueBG),
        clickableCategoryCard("Konsum", "assets/images/categories/konsum.png",
            5, cc.purple, cc.purpleBG),
        clickableCategoryCard("Reisen", "assets/images/categories/reisen.png",
            6, cc.yellow, cc.yellowBG),
        clickableCategoryCard("Transport",
            "assets/images/categories/transport.png", 2, cc.blue, cc.blueBG),
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
            cc.blue, cc.blueBG),
        clickableActionCard("eBike", "assets/images/categories/haushalt.png", 0,
            cc.blue, cc.blueBG),
        clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            cc.blue, cc.blueBG),
        clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            cc.blue, cc.blueBG),
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
            cc.blue, cc.blueBG),
        clickableActionCard("Heizen", "assets/images/categories/haushalt.png",
            0, cc.blue, cc.blueBG),
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
            cc.blue, cc.blueBG),
        clickableActionCard("Unverpackt",
            "assets/images/categories/haushalt.png", 0, cc.blue, cc.blueBG),
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
            cc.blue, cc.blueBG),
        clickableActionCard("eBike", "assets/images/categories/haushalt.png", 0,
            cc.blue, cc.blueBG),
        clickableActionCard("Laufen", "assets/images/categories/konsum.png", 0,
            cc.blue, cc.blueBG),
        clickableActionCard("ÖPNV", "assets/images/categories/reisen.png", 0,
            cc.blue, cc.blueBG),
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
            cc.blue, cc.blueBG),
        clickableActionCard("Zug", "assets/images/categories/haushalt.png", 0,
            cc.blue, cc.blueBG),
        clickableActionCard("Auto", "assets/images/categories/konsum.png", 0,
            cc.blue, cc.blueBG),
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