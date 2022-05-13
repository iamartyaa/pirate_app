import 'package:flutter/material.dart';
import 'package:pirate_app/providers/product.dart';

List<Product> dummy_products = [
  Product(
      id: 1,
      title: "Luffy Hat",
      price: 12.67,
      description: "A Hat",
      imageUrl: "https://www.pinclipart.com/picdir/middle/541-5419166_transparent-background-pirate-hat-png-clipart.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Pirate Ship Medium",
      price: 234,
      description: "A Ship",
      imageUrl: "https://cdn.pixabay.com/photo/2017/02/01/00/29/sailing-ship-2028575_1280.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Robe",
      price: 234,
      description: "A Robe",
      imageUrl: "https://static.wikia.nocookie.net/clubpenguin/images/9/97/Gray_Pirate_Coat_icon.png/revision/latest?cb=20140203183823",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Pirate Sword",
      price: 234,
      description: "A Sword",
      imageUrl: "https://www.pngitem.com/pimgs/m/46-461393_cutlass-big-image-png-pirate-sword-clipart.png",
      color: Color(0xFFE6B398)),
];