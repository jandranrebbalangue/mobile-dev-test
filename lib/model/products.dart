import 'dart:convert';

import 'package:shopping_cart/model/product.dart';

class Products {
  Products({
    this.products,
  });

  List<Product> products;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );
}
