class DataModel {
  int? id;
  String? title;
  double? price;
  String? image;
  String? description;
  ratingmodelexa? model;
  DataModel(
      {this.id,
      this.price,
      this.title,
      this.image,
      this.description,
      this.model});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        image: json["image"],
        description: json["description"],
        model: ratingmodelexa.fronJson(json["model"]));
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "price": price,
      "title": title,
      "image": image,
      "description": description
    };
  }
}

class ratingmodelexa {
  double? rate;
  int? count;
  ratingmodelexa({this.rate, this.count});
  factory ratingmodelexa.fronJson(Map<String, dynamic> json) {
    return ratingmodelexa(rate: json["rate"], count: json["count"]);
  }
  Map<String, dynamic> toJson() {
    return {"rate": rate, "count": count};
  }
}
