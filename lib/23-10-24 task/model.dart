class DataModel {
  int? id;
  String? title;
  double? price;
  DataModel({this.id, this.price, this.title});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"], title: json["title"], price: json["price"]);
  }
  Map<String, dynamic> toJson() {
    return {"id": id, "price": price, "title": title};
  }
}
