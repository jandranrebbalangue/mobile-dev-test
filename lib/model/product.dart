class Product {
  String id;
  String name;
  String category;
  int price;
  String bgColor;
  Product({this.id, this.name, this.category, this.price, this.bgColor});

  factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        category: json['category'],
        price: json['price'],
        bgColor: json['bgColor']);
  }
}
