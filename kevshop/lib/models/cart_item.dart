// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:kevshop/models/product.dart';

class CartItem {
  final String productId;
  final int quantity;
  final Product product;

  CartItem({
    required this.productId,
    required this.quantity,
    required this.product,
  });

  CartItem copyWith({
    String? productId,
    int? quantity,
    Product? product,
  }) {
    return CartItem(
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
    );
  }
}
