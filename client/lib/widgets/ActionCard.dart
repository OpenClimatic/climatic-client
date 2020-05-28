import 'package:client/themes/theme.dart';
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
          padding: const EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(10),
              boxShadow: [boxshadow],
            ),

            child: Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10)),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: snapshot.data.colorScheme.surface),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                   padding: const EdgeInsets.only(left: 10, top: 5, bottom: 0),
                                  child: Text("Kategorie", style: snapshot.data.textTheme.bodyText1,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                                  child: Text(label, style: snapshot.data.textTheme.headline4,),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
          )),
    );
  }
}