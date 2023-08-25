import 'package:flutter/material.dart';
import 'package:kevshop/data/app_products.dart';

import '../../models/product.dart';

class ProductDetailState extends ChangeNotifier {
  Product? product;

  ProductDetailState(String productId) {
    getProduct(productId);
  }

  void getProduct(String productId) {
    final products = AppProducts.products;
    product = products.firstWhere((p) => p.id == productId);
    notifyListeners();
  }
}
