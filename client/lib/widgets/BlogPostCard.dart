import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/BlogPost.dart';
import '../pages/blog-posts/DiscoverBlogPostDetailedView.dart';

class BlogPostCard extends StatelessWidget {
  final BlogPost blogPost;

  const BlogPostCard({Key key, @required this.blogPost}) : super(key: key);

  Widget postCard() {
    return Container(
        width: 200,
        child: Column(
          children: <Widget>[
            Image.asset(blogPost.imgPath),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(blogPost.title),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (_) =>
                      DiscoverBlogPostDetailedView(blogPost: blogPost)));
        },
        child: Column(
          children: [
            Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10)),
                padding: EdgeInsets.all(16.0),
                child: Container(
                    child: Hero(
                  tag: blogPost.id,
                  child: postCard(),
                ))),
          ],
        ));
  }
}
