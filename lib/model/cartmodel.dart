import 'package:flutter/material.dart';
import 'package:shopping_cart/model/product.dart';

class CartModel extends ChangeNotifier {
  List<Product> _items = [];

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(int index) {
    _items.remove(index);
    notifyListeners();
  }
}
