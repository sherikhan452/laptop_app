import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:laptop_app/models/cart_item.dart';
import 'package:laptop_app/models/food.dart';

class Restuarent extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    ),
    Food(
      name: "Classic Cheese",
      description: "A juicy peet baty",
      imgPath: "lib/assests/Images/Laptopone.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
        Addon(name: "Extra Cheese", price: 30.9),
      ],
    )
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

//User Cart
  final List<CartItem> _cart = [];

  //Add to Cart
  void addtoCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //Remove Cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price from the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //GetTotalItemof Cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear Cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is ur receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} = ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add -ons : ${_formatAddons(cartItem.selectedAddons)}");
      }

      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln("");
    receipt.writeln("Total Items ${getTotalItemCount()}");
    receipt.writeln("Total Price ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
