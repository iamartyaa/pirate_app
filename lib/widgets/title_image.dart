import 'package:flutter/material.dart';
import '../providers/product.dart';

class TitleImage extends StatelessWidget {
  final Product product;

  TitleImage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // const Text(
          //   "Aristocratic Hand Bag",
          //   style: TextStyle(color: Colors.white),
          // ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
