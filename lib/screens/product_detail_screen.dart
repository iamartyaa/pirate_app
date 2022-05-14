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
        backgroundColor: product.color,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search,color: Colors.white,),
          ),
          Badge(
            child: IconButton(
              icon: const Icon(Icons.shopping_cart,color: Colors.white,),
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
