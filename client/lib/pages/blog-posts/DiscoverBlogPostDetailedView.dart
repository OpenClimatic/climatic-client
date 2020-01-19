import 'package:flutter/material.dart';
import '../../models/BlogPost.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DiscoverBlogPostDetailedView extends StatelessWidget {
  final BlogPost blogPost;

  const DiscoverBlogPostDetailedView({Key key, @required this.blogPost})
      : super(key: key);

  Widget _stats() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Hero(
                  tag: blogPost.id,
                  child: Image.asset(
                    blogPost.imgPath,
                    fit: BoxFit.cover,
                  ),
                ))),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "walking",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              LinearPercentIndicator(
                width: 220.0,
                lineHeight: 14.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
