import "package:flutter/material.dart";
import "package:client/models/BlogPost.dart";

class DiscoverBlogPostDetailedView extends StatelessWidget {
  final BlogPost blogPost;

  const DiscoverBlogPostDetailedView({Key key, this.blogPost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
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
                  padding: const EdgeInsets.all(16.0),
                  child: Text(blogPost.title,
                      style: Theme.of(context).textTheme.headline2)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(blogPost.content,
                    style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          ),
        )
      ],
    ));
  }
}
