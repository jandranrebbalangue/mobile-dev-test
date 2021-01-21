class Product {
  String id;
  String name;
  String category;
  String price;
  String bgColor;
  Product({
    this.id,
    this.name,
    this.category,
    this.price,
    this.bgColor,
  });
  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        price: json["price"],
        bgColor: json["bgColor"],
      );
}
