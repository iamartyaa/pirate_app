import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String imageUrl, title, description;
  final int id;
  final double price;
  final Color color;
  Product({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
  });
  
}