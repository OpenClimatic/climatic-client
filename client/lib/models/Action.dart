import 'package:client/models/Attribute.dart';
import 'CounterPart.dart';

class ActionModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double co2save;
  final Attribute attribute;
  final List<CounterPart> counterParts;
  final String imgPath;

  /// [co2save] in kg
  /// [imgPath] are constents see resources/statics.dart
  ActionModel(
    this.id,
    this.title,
    this.description,
    this.category,
    this.co2save,
    this.attribute,
    this.counterParts,
    this.imgPath,
  );
}
