import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_education/models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
      ),
      body: ListView.builder(
        itemCount: cart.totalItems,
        itemBuilder: (context, index) {
          var product = cart.cartItems[index];
          return ListTile(
            leading: Image.network(product.thumbnail),
            title: Text(product.title),
            subtitle: Text(product.description),
            trailing: IconButton(
              icon: const Icon(Icons.remove_shopping_cart),
              onPressed: () {
                cart.removeProduct(product);
              },
            ),
          );
        },
      ),
    );
  }
}
