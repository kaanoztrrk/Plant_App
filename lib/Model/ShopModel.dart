import 'package:flutter/material.dart';
import 'package:plat_shop/Model/PlantModel.dart';

class PlantShop extends ChangeNotifier {
  final List<Plant> _userCart = [];
  // get user cart
  List<Plant> get userCart => _userCart;
  // add item from cart
  void addItemToCart(Plant coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Plant coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
