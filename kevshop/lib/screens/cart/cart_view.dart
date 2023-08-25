import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../states/cart_state.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartState = Provider.of<CartState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: cartState.cartItems.length,
        itemBuilder: (context, index) {
          final item = cartState.cartItems[index];
          return Dismissible(
            key: ValueKey(item.productId),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) => cartState.removeFromCart(item.product, forceRemove: true),
            background: Container(
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )),
            child: ListTile(
              leading: Image.network(
                item.product.image,
              ),
              title: Text(item.product.name),
              subtitle: Text(
                item.product.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => cartState.removeFromCart(item.product),
                    icon: const Icon(Icons.remove),
                  ),
                  CircleAvatar(
                    child: Text(item.quantity.toString()),
                  ),
                  IconButton(
                    onPressed: () => cartState.addToCart(item.product),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
