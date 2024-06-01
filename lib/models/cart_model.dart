import 'package:flutter/material.dart';
import 'package:flutter_education/models/product_model.dart';

class CartModel extends ChangeNotifier {
  final List<ProductModel> _cartItems = [];

  List<ProductModel> get cartItems => _cartItems;

  void addProduct(ProductModel product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeProduct(ProductModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  int get totalItems => _cartItems.length;
}
