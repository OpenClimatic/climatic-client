import 'package:client/models/Action.dart';
import 'package:client/models/CounterPart.dart';
import 'package:client/models/Attribute.dart';
import 'package:client/resources/statics.dart';

ActionModel fahrradFahren = ActionModel(
  0,
  "Fahrrad fahren",
  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam",
  "Transport",
  0.05,
  Attribute(0, "Wie weit bist du gefahren?", "km", 1, 100, 5),
  [
    CounterPart("Auto - Benzin", 0.18),
    CounterPart("Auto - Diesel", 0.21),
    CounterPart("Bus", 0.08),
    CounterPart("ÖPNV", 0.06)
  ],
  PATH_TRANSPORT,
);

ActionModel eBikeFahren = ActionModel(
  1,
  "E-Bike fahren",
  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam",
  "Transport",
  0.01,
  Attribute(1, "Wie weit bist du gefahren?", "km", 1, 100, 5),
  [
    CounterPart("Auto - Benzin", 0.18),
    CounterPart("Auto - Diesel", 0.21),
    CounterPart("Bus", 0.08),
    CounterPart("Fahrrad", 0.05),
    CounterPart("ÖPNV", 0.06)
  ],
  PATH_TRANSPORT,
);

ActionModel vegetarischerTag = ActionModel(
  2,
  "Vegetarischer Tag",
  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam",
  "Transport",
  -1.25,
  null,
  [],
  PATH_ERNAERHUNG,
);

ActionModel keinKaese = ActionModel(
  3,
  "Kein Käse den Tag gegessen",
  "Lorem ipsum",
  "Ernährung",
  -0.55,
  null,
  [],
  PATH_ERNAERHUNG,
);

ActionModel leitungswasser = ActionModel(
  4,
  "Leitungswasser getrunken",
  "Lorem ipsum",
  "Ernährung",
  0.5,
  Attribute(2, "Wie wiel hast du getrunken?", "l", 0.5, 3, 1),
  [
    CounterPart("Mineralwasser", 0.21),
    CounterPart("Saft", 0.7),
    CounterPart("Limonade", 0.5),
    CounterPart("Kaffee", 0.96),
    CounterPart("Tee", 0.4)
  ],
  PATH_ERNAERHUNG,
);

ActionModel waescheTrocknen = ActionModel(
  5,
  "Wäsche an der Luft trocknen",
  "Lorem ipsum",
  "Haushalt",
  -0.84,
  null,
  [],
  PATH_HAUSHALT,
);

ActionModel standbyeGeraete = ActionModel(
  6,
  "Standby Geräte ausschalten",
  "lorem ipsum",
  "Haushalt",
  -0.20,
  null,
  [],
  PATH_HAUSHALT,
);

ActionModel secoundHandSchuhe = ActionModel(
  7,
  "Second Hand Schuhe",
  "Lorem ipsum",
  "Konsum",
  -14,
  Attribute(3, "Wie viele Schuhe hast du gekauft?", "Stückzahl", 1, 8, 1),
  [],
  PATH_KONSUM,
);

ActionModel ferienwohnung = ActionModel(
  9,
  "Eine Ferienwohnung gemietet",
  "Lorem ipsum",
  "Reisen",
  3.7,
  Attribute(5, "Wie viele Tage hast du übernachtet", "Tage", 1, 30, 7),
  [
    CounterPart("Hotelübernachtung", 22.6),
    CounterPart("Camping Platz", 4.5),
    CounterPart("Kreuzfahrt", 83.3)
  ],
  PATH_REISEN,
);

ActionModel fernlinienbus = ActionModel(
  10,
  "Mit Fernlinienbus gereist",
  "Lorem ipsum",
  "Reisen",
  0.02,
  Attribute(6, "Wie weit bist du gereist?", "km", 100, 1000, 250),
  [CounterPart("IC oder ICE", 0.04)],
  PATH_REISEN,
);
