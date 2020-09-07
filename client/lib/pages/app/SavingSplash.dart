import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';

class SavingsSplash extends StatelessWidget {
  final double saved;

  const SavingsSplash({Key key, this.saved}) : super(key: key);

  share(context) {
    print("SHARE NOW");
    Navigator.popAndPushNamed(context, "Home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      icon: Icon(
                        FeatherIcons.xCircle,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "Home");
                      })),
              Text("SUPER", style: Theme.of(context).textTheme.headline1),
              Text("Du hast dein CO2 verringert",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1),
              SizedBox(
                height: 40,
              ),
              Text("Deine Einsparung:",
                  style: Theme.of(context).textTheme.headline2),
              Text(saved.toString() + " kg",
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(
                height: 150,
              ),
              Container(
                  padding: EdgeInsets.all(12),
                  child: CustomButton(
                    label: "Teile dieses Ersparnis",
                    width: 260,
                    colorBG: Colors.black87,
                    onPressed: () {
                      share(context);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
