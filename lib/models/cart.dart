
import 'package:flutter/material.dart';
import 'package:shoe_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Air Max 90",
        price: "120",
        imagePath:"lib/images/Nike-Air-Max-90.png",
        description: "Nike Air Max 90 shoes"
    ),
    Shoe(
        name: "Nike Air Force 1",
        price: "100",
        imagePath: "lib/images/Nike-Air-Force-1.png",
        description: "Nike Air Force 1 shoes"
    ),
    Shoe(
        name: "Nike Air Jordan 1",
        price: "150",
        imagePath: "lib/images/Nike-Air-Jordan-1.jpg",
        description: "Nike Air Jordan 1 shoes"
    ),
    Shoe(
        name: "Nike React Element 55",
        price: "130",
        imagePath: "lib/images/Nike-React-Element-55.jpg",
        description: "Nike React Element 55 shoes"
    )
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}