import 'package:flutter/material.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:pirate_app/providers/product.dart';
import 'package:pirate_app/screens/cart_screen.dart';
import 'package:pirate_app/widgets/badge.dart';
import 'package:pirate_app/widgets/item_detail.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail-screen';
  final Product product;
  ProductDetailScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.search,color: Colors.white,),
          ),
          Badge(
            child: IconButton(
              icon: const Icon(Icons.shopping_cart,color: Colors.white,),
              onPressed: () {
              Navigator.of(context).pushReplacementNamed(CartScreen.routeName);},
            ),
            value: data.itemCount.toString(),
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
