class Action {
  final String title;
  final String question;
  final int id;
  final String description;
  final String shortDescription;
  final String category;
  final int impact;
  final int expenses;
  final List<String> selection;
  final String imgPath;

  Action(
      this.id,
      this.title,
      this.shortDescription,
      this.description,
      this.category,
      this.imgPath,
      this.impact,
      this.expenses,
      this.selection,
      this.question);
}
