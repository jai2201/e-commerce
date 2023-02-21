import 'package:evira/src/models/product/product.dart';
import 'package:flutter/material.dart';

class CartItem {
  final Product product;
  int quantity = 1;

  CartItem({required this.product, required this.quantity});
}

class CartModel with ChangeNotifier {
  Map<String, CartItem> items = {};
  Map<String, CartItem> get getItems {
    return {...items};
  }

  int get itemCount {
    return items.length;
  }

  void addItem(String itemId, CartItem item) {
    if (items.containsKey(itemId)) {
      items.update(
          itemId,
          (existingItem) => CartItem(
              product: existingItem.product,
              quantity: existingItem.quantity + item.quantity));
    } else {
      items.putIfAbsent(itemId, () => item);
    }
    notifyListeners();
  }

  void removeItem(String itemId) {
    if (!items.containsKey(itemId)) {
      return;
    }
    if (items[itemId]!.quantity > 1) {
      items.update(
          itemId,
          (existingItem) => CartItem(
              product: existingItem.product,
              quantity: existingItem.quantity - 1));
    }
    notifyListeners();
  }

  void removeCompleteItem(String itemId) {
    items.remove(itemId);
    notifyListeners();
  }

  void clearCart() {
    items = {};
  }

  double getTotalPrice() {
    double total = 0;
    for (CartItem item in items.values) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  int getQuantity(String itemId) {
    if (items.containsKey(itemId)) {
      return items[itemId]!.quantity;
    }
    return 0;
  }

  bool isItemPresent(String itemId) {
    if (items.containsKey(itemId)) {
      return true;
    }
    return false;
  }
}
