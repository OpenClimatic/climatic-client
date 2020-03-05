import 'package:flutter/material.dart';
import '../ActionCard.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedTab = 0;

  switchTo(page) {
    setState(() {
      _selectedTab = 2;
    });
  }

  clickableActionCard(label, img, page) {
    return (GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = page;
        });
      },
      child: ActionCard(label: label, image: img),
    ));
  }

  mainCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        clickableActionCard(
            "Ernährung", "assets/images/categories/food.png", 2),
        clickableActionCard(
            "Haushalt", "assets/images/categories/haushalt.png", 3),
        clickableActionCard("Konsum", "assets/images/categories/konsum.png", 4),
        clickableActionCard("Reisen", "assets/images/categories/reisen.png", 5),
        clickableActionCard(
            "Transport", "assets/images/categories/transport.png", 1),
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
        ActionCard(
          label: "Fahrrad",
          image: "assets/images/categories/food.png",
        ),
        ActionCard(
          label: "eBike",
          image: "assets/images/categories/haushalt.png",
        ),
        ActionCard(
          label: "Laufen",
          image: "assets/images/categories/konsum.png",
        ),
        ActionCard(
          label: "ÖPNV",
          image: "assets/images/categories/reisen.png",
        ),
      ],
    );
  }

  haushaltCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        ActionCard(
          label: "Fahrrad",
          image: "assets/images/categories/food.png",
        ),
        ActionCard(
          label: "eBike",
          image: "assets/images/categories/haushalt.png",
        ),
        ActionCard(
          label: "Laufen",
          image: "assets/images/categories/konsum.png",
        ),
        ActionCard(
          label: "ÖPNV",
          image: "assets/images/categories/reisen.png",
        ),
      ],
    );
  }

  foodCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        ActionCard(
          label: "Fahrrad",
          image: "assets/images/categories/food.png",
        ),
        ActionCard(
          label: "eBike",
          image: "assets/images/categories/haushalt.png",
        ),
        ActionCard(
          label: "Laufen",
          image: "assets/images/categories/konsum.png",
        ),
        ActionCard(
          label: "ÖPNV",
          image: "assets/images/categories/reisen.png",
        ),
      ],
    );
  }

  konsumCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        ActionCard(
            label: "Fahrrad",
            image: "assets/images/categories/food.png",
            onClick: () {
              print("hello world");
            }),
        ActionCard(
          label: "eBike",
          image: "assets/images/categories/haushalt.png",
        ),
        ActionCard(
          label: "Laufen",
          image: "assets/images/categories/konsum.png",
        ),
        ActionCard(
          label: "ÖPNV",
          image: "assets/images/categories/reisen.png",
        ),
      ],
    );
  }

  reisenCategory() {
    return new Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.0, // gap between adjacent chips
      runSpacing: 2.0, // gap between lines
      alignment: WrapAlignment.center,
      children: <Widget>[
        ActionCard(
          label: "Fahrrad",
          image: "assets/images/categories/food.png",
        ),
        ActionCard(
          label: "eBike",
          image: "assets/images/categories/haushalt.png",
        ),
        ActionCard(
          label: "Laufen",
          image: "assets/images/categories/konsum.png",
        ),
        ActionCard(
          label: "ÖPNV",
          image: "assets/images/categories/reisen.png",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pageOptions = [
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
