import 'package:flutter/material.dart';
import 'package:kevshop/data/app_products.dart';
import 'package:kevshop/screens/cart/cart_view.dart';
import 'package:kevshop/screens/product_details/product_detail.dart';
import 'package:provider/provider.dart';

import '../../states/cart_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartState = Provider.of<CartState>(context);

    final cart = cartState.totalCartQuantity;

    final products = AppProducts.products;

    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            var quantityFromCartItem = cartState.getQuantityFromCartItem(product.id);
            return InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ProductDetailView(
                        productId: product.id,
                      ))),
              child: GridTile(
                child: Container(
                  color: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        Expanded(
                          child: Image.network(
                            product.image,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          product.name,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => cartState.addToCart(product),
                              child: const Text(
                                "SHOP NOW",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            if (quantityFromCartItem > 0) ...[
                              const SizedBox(width: 15),
                              CircleAvatar(
                                child: Text(quantityFromCartItem.toString()),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CartView())),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            Positioned(
              top: -5,
              right: 0,
              child: Badge(
                label: Text(cart.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
