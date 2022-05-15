import 'package:flutter/material.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:pirate_app/screens/cart_screen.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';

class AddCart extends StatelessWidget {
  final Product product;
  // final String s;
  // final int quan;
  AddCart({required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: product.color,
              ),
              onPressed: () {
                cart.addItem(
                    product.id, product.price, product.title); //error prone
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Added item to Cart',
                    ),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                        label: 'UNDO',
                        onPressed: () {
                          cart.removeSingleItem(product.id);
                        }),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {
                  cart.addItem(product.id, product.price, product.title);
                  Navigator.of(context)
                      .pushReplacementNamed(CartScreen.routeName);
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
