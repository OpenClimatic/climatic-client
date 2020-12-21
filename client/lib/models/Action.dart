class Action {
  final String title;
  final int id;
  final String description;
  final int categoryId;
  final int expenses;
  final List<String> selection;
  final String imgPath;

  Action(this.id, this.title, this.description, this.imgPath, this.expenses,
      this.selection, this.categoryId);
}
