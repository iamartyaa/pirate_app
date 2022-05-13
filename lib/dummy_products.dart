import 'package:flutter/material.dart';
import 'package:pirate_app/providers/product.dart';

List<Product> dummy_products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 12.67,
      description: "A Hat",
      imageUrl: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      description: "A Hook",
      imageUrl: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      description: "A Robe",
      imageUrl: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      description: "A Sword",
      imageUrl: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
];