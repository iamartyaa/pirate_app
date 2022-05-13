import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';
import 'package:pirate_app/screens/product_detail_screen.dart';
import 'package:pirate_app/widgets/categories.dart';
import 'package:pirate_app/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.all(5),
        //   child: Text(
        //     "Pirate Shop",
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline5!
        //         .copyWith(fontWeight: FontWeight.bold),
        //   ),
        // ),
        Padding(padding: EdgeInsets.all(5)),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: dummy_products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: dummy_products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                        product: dummy_products[index],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
