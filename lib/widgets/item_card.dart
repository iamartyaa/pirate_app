import 'package:flutter/material.dart';
import 'package:pirate_app/providers/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              // products is out demo list
              product.title,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 2),
            child: Text(
              "\$${product.price}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
