import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';
import 'package:pirate_app/widgets/categories.dart';
import 'package:pirate_app/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            "Pirate Shop",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
                itemCount: dummy_products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.75,
                ),
                // itemBuilder: (context, index) => ItemCard(
                //       product: products[index],
                //       press: () => Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => DetailsScreen(
                //               product: products[index],
                //             ),
                //           )),
                //     )),
                itemBuilder: (context, index) => ItemCard(product: dummy_products[index], press: (){})),
          ),
        ),
      ],
    );
  }
}