import 'package:client/models/Category.dart';
import 'package:client/resources/actions.dart';
import 'package:client/resources/statics.dart';

final List<Category> categories = <Category>[
  Category(0, "Transport", PATH_TRANSPORT, [actions[0], actions[1]]),
  Category(
      1, "Ernährung", PATH_ERNAERHUNG, [actions[2], actions[3], actions[4]]),
  Category(2, "Haushalt", PATH_HAUSHALT, [actions[5], actions[6]]),
  Category(3, "Konsum", PATH_KONSUM, [actions[7], actions[8]]),
  Category(4, "Reisen", PATH_REISEN, [actions[9], actions[10]])
];
