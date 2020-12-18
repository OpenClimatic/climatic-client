import 'Action.dart';

class Category {
  final int id;
  final String title;
  final String imgPath;
  final List<ActionModel> actions;

  Category(
    this.id,
    this.title,
    this.imgPath,
    this.actions,
  );
}
