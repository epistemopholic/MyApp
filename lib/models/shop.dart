import 'package:flutter/cupertino.dart';

class ShoppingScreen {
  final item = {
    "id": 1,
    "name": "iPhone X",
    "color": "BLACK",
    "price": 560,
    "image": Image.asset("assets\imgs\1.png"),
  };
}

class Items {
  final int id;
  final String name;
  final String color;
  final double price;
  final String image;

  Items(this.id, this.name, this.color, this.price, this.image);
}
