import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';

class Product {
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

class Fav with ChangeNotifier {
  List<Product> favs =[];

  void addFav(String id){
    final prod = dummy_products.firstWhere((element) => element.id==id);
    favs.add(prod);
    notifyListeners();
  }

  List<Product> get prodList {
    return [...favs];
  }

  int get prodCount {
    return favs.length;
  }

  void removeFav(String id){
    var index =favs.indexWhere((element) => element.id==id);
    favs.removeAt(index);
    notifyListeners();
  }
}

