import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of available shopping items
  final List<List<dynamic>> _shopingItems = [
    // [ itemName, itemPrice, imagePath, color ]
    [
      "Cappuccino",
      "4.00",
      "lib/images/delicious-cappuccino-with-beautiful-painting-foam.png",
      Colors.brown
    ],
    [
      "Orange Coffee",
      "2.50",
      "lib/images/caramel-custard-pudding.png",
      Colors.brown.shade500
    ],
    ["Flat White", "12.80", "lib/images/top-view-cap-coffee.png", Colors.brown],
    [
      "Cappuccino Coffee",
      "13.00",
      "lib/images/delicious-cappuccino-with-beautiful-painting-foam.png",
      Colors.brown
    ],
    [
      "Cappuccino",
      "4.00",
      "lib/images/delicious-cappuccino-with-beautiful-painting-foam.png",
      Colors.brown
    ],
    [
      "Orange Coffee",
      "2.50",
      "lib/images/caramel-custard-pudding.png",
      Colors.brown.shade500
    ],
    ["Flat White", "12.80", "lib/images/top-view-cap-coffee.png", Colors.brown],
    [
      "orange Coffee",
      "13.00",
      "lib/images/delicious-cappuccino-with-beautiful-painting-foam.png",
      Colors.brown
    ],
  ];

  // List of items in the cart
  final List<List<dynamic>> _cartItems = [];

  // Getters
  List<List<dynamic>> get cartItems => _cartItems; // Getter for cart items
  List<List<dynamic>> get shopingItems =>
      _shopingItems; // Getter for shopping items

  // Add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopingItems[index]);
    notifyListeners(); // Notify listeners about the change
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners(); // Notify listeners about the change
  }

  // Calculate total price of items in the cart
  String calculateTotal() {
    double totalPrice = 0;
    for (var item in _cartItems) {
      totalPrice += double.parse(item[1]);
    }
    return totalPrice.toStringAsFixed(
        2); // Return the total as a string with 2 decimal places
  }
}
