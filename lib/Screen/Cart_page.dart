import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/MyCartTile.dart';
import 'package:laptop_app/models/restuarent.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restuarent>(
      builder: (context, restuarent, child) {
        final userCart = restuarent.cart;

        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            // backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear All Cart Button

              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure you want to Delete"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restuarent.clearCart();
                          },
                          child: Text("Yes"),
                        )
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    final cartItem = userCart[index];

                    return MyCartTile(cartItem: cartItem);
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
