import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';

class SavingsSplash extends StatelessWidget {
  final double saved;

  const SavingsSplash({Key key, this.saved}) : super(key: key);

  share() {
    print("SHARE NOW");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Text("Du hast deinen CO2 verringert"),
          Text("GUT GEMACHT"),
          Text("Du hast deinen Fußabdruck verringert um"),
          Text(
            saved.toString() + " kg",
            style: TextStyle(fontSize: 24),
          ),
          CustomButton(
            label: "Teile deine ersparnis",
            onPressed: share,
          )
        ],
      ),
    );
  }
}
