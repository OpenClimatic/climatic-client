import 'package:client/widgets/TextField/TextField.dart';
import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';
import 'package:client/services/storage.dart';
import '../../themes/theme.dart';

class IntroPage4 extends StatefulWidget {
  IntroPage4({Key key}) : super(key: key);

  @override
  _IntroPage4State createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  var username = "Klimaschützer/in";

  header() {
    return Container(
      child: Stack(children: <Widget>[
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xff21D294),
            boxShadow: [boxshadow],
            borderRadius: new BorderRadius.only(
                bottomRight: const Radius.circular(30.0),
                bottomLeft: const Radius.circular(30.0)),
          ),
          child: Container(
            child: new Image.asset(
              "assets/images/intro/bg.png",
              scale: 2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 50, bottom: 50, left: 20, right: 10),
            child: Text(
              "Wie dürfen wir dich nennen?",
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  .copyWith(color: Colors.white),
            ))
      ]),
    );
  }

  nameInput() {
    return TextFieldIcon(
      label: username,
      onChanged: (e) {
        username = e;
      },
    );
  }

  buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          width: 130,
          secondary: true,
          label: "Zurück",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomButton(
          label: "Weiter",
          width: 140,
          onPressed: () {
            storage.write(key: FINISHED_INTRO, value: "true");
            storage.write(key: NAME, value: username);
            Navigator.pushNamedAndRemoveUntil(context, "/Home", (r) => false);
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          header(),
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
            child: Column(
              children: <Widget>[
                nameInput(),
                SizedBox(height: 35),
                buttonRow()
              ],
            ),
          )
        ],
      ),
    );
  }
}
