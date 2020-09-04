import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';

class SavingsSplash extends StatelessWidget {
  final double saved;

  const SavingsSplash({Key key, this.saved}) : super(key: key);

  share(context) {
    print("SHARE NOW");
    Navigator.popAndPushNamed(context, "Dashboard");
  }

  @override
  Widget build(BuildContext context) {
    Color col = Theme.of(context).colorScheme.background;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Du hast dein CO2 verringert",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: col, fontSize: 24)),
              Text("GUT GEMACHT",
                  style: TextStyle(
                      color: col, fontSize: 42, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Text("deine Einsparung",
                  style: TextStyle(color: col, fontSize: 24)),
              Text(saved.toString() + " kg",
                  style: TextStyle(
                      color: col, fontSize: 70, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
              ),
              CustomButton(
                label: "Teile deine ersparnis",
                onPressed: () {
                  share(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
