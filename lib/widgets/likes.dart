import 'package:flutter/material.dart';
import 'package:pirate_app/providers/product.dart';
import 'package:pirate_app/screens/product_detail_screen.dart';
import 'package:pirate_app/widgets/item_card.dart';
import 'package:provider/provider.dart';

class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Fav>(context);
    final prods = productData.prodList;
    final c = productData.prodCount;
    return c == 0
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 350,
                  child: Image.asset(
                    "assets/empty.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  "Empty inventory! Add items Pirate :)",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GridView.builder(
                    itemCount: prods.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                      product: prods[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(
                              product: prods[index],
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
