import 'package:flutter/material.dart';
import 'package:pirate_app/providers/product.dart';
import 'package:pirate_app/widgets/badge.dart';
import 'package:pirate_app/widgets/item_detail.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail-screen';
  final Product product;
  ProductDetailScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Badge(
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            value: 0.toString(),
            color: Colors.green,
          ),
        ],
      ),
      body: ItemDetail(
        product: product,
      ),
    );
  }
}
