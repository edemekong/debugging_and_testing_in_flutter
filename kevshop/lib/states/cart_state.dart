import 'package:flutter/material.dart';
import 'package:kevshop/models/cart_item.dart';
import 'package:kevshop/models/product.dart';

class CartState extends ChangeNotifier {
  List<CartItem> cartItems = [];

  int get totalCartQuantity {
    if (cartItems.isEmpty) return 0;
    return cartItems.map((e) => e.quantity).reduce((value, element) => value + element);
  }

  int getQuantityFromCartItem(String id) {
    try {
      return cartItems.firstWhere((element) => element.productId == id).quantity;
    } catch (e) {
      return 0;
    }
  }

  void addToCart(Product product) {
    final index = cartItems.indexWhere((element) => element.productId == product.id);

    if (index != -1) {
      // productAlreadyInCart
      final CartItem oldItem = cartItems.removeAt(index);

      final newItem = oldItem.copyWith(
        quantity: oldItem.quantity + 1,
        product: product,
      );
      cartItems.insert(index, newItem);

      notifyListeners();
      return;
    }

    final newCartItem = CartItem(
      productId: product.id,
      quantity: 1,
      product: product,
    );

    cartItems.add(newCartItem);
    notifyListeners();
  }

  void removeFromCart(Product product, {bool forceRemove = false}) {
    final index = cartItems.indexWhere((element) => element.productId == product.id);

    if (index != -1) {
      final CartItem oldItem = cartItems.removeAt(index);

      if (oldItem.quantity > 1 && !forceRemove) {
        final CartItem newCartItem = oldItem.copyWith(
          quantity: oldItem.quantity - 1,
          product: product,
        );

        cartItems.insert(index, newCartItem);
      }
    }

    notifyListeners();
  }
}
