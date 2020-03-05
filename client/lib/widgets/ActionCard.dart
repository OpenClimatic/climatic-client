import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onClick;
  final double width = 150;

  const ActionCard(
      {Key key, @required this.label, @required this.image, this.onClick})
      : super(key: key);

  Widget postCard() {
    return Container(
        width: width,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                image,
              ),
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 5.0, // has the effect of softening the shadow
                  offset: const Offset(0.0, 5.0),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(10)),
                    child: Container(
                      child: postCard(),
                    )),
              ],
            ),
          )),
    );
  }
}
