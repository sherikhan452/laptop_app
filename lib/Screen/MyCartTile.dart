import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/My_Quantity_item.dart';
import 'package:laptop_app/models/cart_item.dart';
import 'package:laptop_app/models/restuarent.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restuarent>(
      builder: (context, resturarent, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imgPath,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text(
                        '\$' + cartItem.food.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                  const Spacer(),
                  QuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncreament: () {
                      resturarent.addtoCart(
                          cartItem.food, cartItem.selectedAddons);
                    },
                    onDecreament: () {
                      resturarent.removeFromCart(cartItem);
                    },
                  )
                ],
              ),
            ),

            // Addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name),
                              Text('(\$${addon.price})'),
                            ],
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          onSelected: (value) {},
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 12),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
