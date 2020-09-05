import 'package:client/widgets/StaticTopBar.dart';
import 'package:flutter/material.dart';
import '../../models/Habit.dart';
import '../../models/BlogPost.dart';
import '../../widgets/HabitPostCard.dart';
import '../../widgets/BlogPostCard.dart';

class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<Habit> fakeHabits = [
    Habit(
      1,
      "Take the bike, not the Car",
      "Choose to bike instead of driving whenever possible.",
      "Wow. Wow. Have I really downloaded an app that tells me to ride my bike? Yes, that's exactly what you did.This tip seems very simple, but 35% of all car trips are shorter than 6km. So do you really always ride your bike when you can?",
      "Transportation",
      "assets/images/habits/Bike-Discover.png",
      2,
      1,
      2,
    ),
    Habit(
      2,
      "Eat less meat",
      "Choose to eat less meat, fill you plate with those juicy vegetables.",
      "Wow. Wow. Have I really downloaded an app that tells me to ride my bike? Yes, that's exactly what you did.This tip seems very simple, but 35% of all car trips are shorter than 6km. So do you really always ride your bike when you can?",
      "Transportation",
      "assets/images/habits/Bike-Article.png",
      2,
      1,
      2,
    ),
  ];

  List<BlogPost> fakeBlogPosts = [
    BlogPost(
      3,
      "How bad are Bananas",
      "On two wheels and moving at a comfortable pace you can enjoy your environment and see, smell and hear things you never notice in a car. Which of your neighbors has the best-landscaped yard? What bakeries smell so good you just have to stop? How many different architectural styles can you spot? On a bicycle you can take the scenic route and explore and become a tourist in your own city. Every ride is an adventure.",
      "Transportation",
      "assets/images/blog-posts/Banane.png",
    ),
    BlogPost(
      4,
      "Living plastic free for a month",
      "Plastic Free July provides resources and ideas to help you (and millions of others around the world) reduce single-use plastic waste everyday at home, work, school, and even at your local café. Our movement has inspired over 250 million participants in 177 countries. You making a small change will collectively make a massive difference to our communities. You can choose to refuse single-use plastics in July (and beyond!). Best of all, being part of Plastic Free July will help you to find great alternatives that can become new habits forever.",
      "Environmental",
      "assets/images/blog-posts/Earth.png",
    ),
  ];

  Widget _buildHabits() {
    List<Widget> habitContainer = [];

    for (var habit in fakeHabits) {
      habitContainer.add(HabitPostCard(habit: habit));
    }

    return Container(
      height: 250,
      child: (ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        children: habitContainer,
      )),
    );
  }

  Widget _habits() {
    return (Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text("Neue Gewohnheiten finden",
                style: Theme.of(context).textTheme.headline3),
          ),
          _buildHabits()
        ],
      ),
    ));
  }

  Widget _buildBlogPosts() {
    List<Widget> blogContainer = [];

    for (var post in fakeBlogPosts) {
      blogContainer.add(BlogPostCard(blogPost: post));
    }

    return Container(
      height: 350,
      child: (ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        children: blogContainer,
      )),
    );
  }

  Widget _news() {
    // todo
    // * rss reader welcher die beiträge vom blog fetcht
    return (Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text("Blog", style: Theme.of(context).textTheme.headline3),
          ),
          _buildBlogPosts()
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            StaticTopBar(back: false, label: "Entdecken"),
            _habits(),
            _news()
          ],
        ),
      ),
    ));
  }
}
