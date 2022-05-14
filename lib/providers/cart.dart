import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;
  final String size;
  final String color;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.size,
    required this.color,
  });
}