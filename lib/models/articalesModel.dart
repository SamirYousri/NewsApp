class ArticalesModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticalesModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticalesModel.jsonFrom(json) {
    return ArticalesModel(
      image: json["urlToImage"],
      title: json["title"],
      subTitle: json["description"],
    );
  }
}
