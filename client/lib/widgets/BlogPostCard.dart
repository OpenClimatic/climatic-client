import 'package:flutter/material.dart';
import '../models/BlogPost.dart';
import '../pages/blog-posts/DiscoverBlogPostDetailedView.dart';
import '../pages/transitions/SizeRoute.dart';

class BlogPostCard extends StatelessWidget {
  final BlogPost blogPost;

  const BlogPostCard({Key key, @required this.blogPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          Navigator.push(
              context,
              SizeRoute(
                  page: DiscoverBlogPostDetailedView(blogPost: blogPost)));
        },
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    height: 200,
                    decoration: new BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: new BorderRadius.circular(10)),
                    child: Hero(
                      tag: blogPost.id,
                      child: Image.asset(blogPost.imgPath),
                    ))),
          ],
        ));
  }
}
