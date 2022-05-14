import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String imageUrl, title, description;
  final String id;
  final double price;
  final Color color;
  final String genre;
  Product({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
    required this.genre,
  });
  
}