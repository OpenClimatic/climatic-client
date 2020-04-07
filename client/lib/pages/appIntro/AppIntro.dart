import 'package:flutter/material.dart';
import './IntroPage1.dart';

class AppIntro extends StatefulWidget {
  AppIntro({Key key}) : super(key: key);

  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Image.asset('assets/icon/icon.png'),
                  height: 160,
                  width: 160,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Willkommen bei",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "Climatic",
                      style: TextStyle(fontSize: 60),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => (IntroPage1())));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff23A2D9),
                    ),
                    child: Center(
                      child: Text("Lass uns starten",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
