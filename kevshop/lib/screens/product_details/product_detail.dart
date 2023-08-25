import 'package:flutter/material.dart';
import 'package:kevshop/screens/product_details/product_detail_state.dart';
import 'package:provider/provider.dart';

import '../../states/cart_state.dart';

class ProductDetailView extends StatelessWidget {
  final String productId;
  const ProductDetailView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductDetailState(productId),
        builder: (context, _) {
          final productState = Provider.of<ProductDetailState>(context);
          final cartState = Provider.of<CartState>(context);

          final product = productState.product;
          return Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                cartState.addToCart(product!);
              },
            ),
            body: Column(
              children: [
                Image.network(product!.image),
              ],
            ),
          );
        });
  }
}
