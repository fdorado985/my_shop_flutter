import 'package:flutter/material.dart';
import 'package:my_shop_flutter/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [...items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
