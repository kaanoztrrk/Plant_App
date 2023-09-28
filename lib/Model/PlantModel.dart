class Plant {
  final String title;
  final String category;
  final String type;
  final String plants;
  final String price;
  final String imagePath;
  final String? about;
  final String? heigth;
  final String? diameter;
  final String? humidifier;

  Plant({
    required this.title,
    required this.category,
    required this.type,
    required this.plants,
    required this.imagePath,
    required this.price,
    this.about,
    this.heigth,
    this.diameter,
    this.humidifier,
  });
}
