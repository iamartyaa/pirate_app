import 'package:flutter/material.dart';
import '../providers/product.dart';
import './colour.dart';
import './cart_counter.dart';
import './add_cart.dart';
import './title_image.dart';

class ItemDetail extends StatelessWidget {
  final Product product;

  ItemDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Colour(product: product),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          product.description,
                          style: const TextStyle(height: 1.5),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const CartCounter(),
                          Container(
                            padding: const EdgeInsets.all(4.5),
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      AddCart(product: product),
                    ],
                  ),
                ),
                TitleImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
