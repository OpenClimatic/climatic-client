class Habit {
  String title;
  int id;
  String description;
  String shortDescription;
  String category;
  int impact;
  int expenses;
  int difficulty;
  String imgPath;

  Habit(this.id, this.title, this.shortDescription, this.description,
      this.category, this.imgPath, this.impact, this.expenses, this.difficulty);
}
