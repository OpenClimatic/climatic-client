class Attribute {
  final int id;
  final String title;
  final String description;
  final String category;
  final String imgPath;
  final List<String> selection;
  final double rangeStart;
  final double rangeEnd;
  final double waste;
  final String perUnit;
  final String calc;

  Attribute(
      this.id,
      this.title,
      this.description,
      this.imgPath,
      this.selection,
      this.category,
      this.rangeStart,
      this.rangeEnd,
      this.waste,
      this.perUnit,
      this.calc);
}
