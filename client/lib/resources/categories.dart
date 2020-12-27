import 'package:client/models/Category.dart';
import 'package:client/resources/actions.dart';
import 'package:client/resources/statics.dart';

final List<Category> categories = <Category>[
  Category(0, "Transport", PATH_TRANSPORT, [fahrradFahren, eBikeFahren]),
  Category(1, "Ernährung", PATH_ERNAERHUNG,
      [vegetarischerTag, keinKaese, leitungswasser]),
  Category(2, "Haushalt", PATH_HAUSHALT, [waescheTrocknen, standbyeGeraete]),
  Category(3, "Konsum", PATH_KONSUM, [secoundHandSchuhe]),
  Category(4, "Reisen", PATH_REISEN, [ferienwohnung, fernlinienbus])
];
