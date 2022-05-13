import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';
import 'package:pirate_app/providers/product.dart';
import 'package:pirate_app/screens/product_detail_screen.dart';
import 'package:pirate_app/widgets/item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<Product> _products = dummy_products;
  final List<String> categories = ["All", "Hat", "Dress", "Weapon", "Ship"];
  int selectedIndex = 0;


  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if(index==0)
          {
            _products=dummy_products;
          }
          else{
          _products=dummy_products.where((element) => element.genre==categories[index]).toList();
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Text(
          categories[index],
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
      elevation: 0.8,
      child: Container(
        // color: Color.fromARGB(255, 153, 237, 228),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: SizedBox(
            height: 33,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCategory(0),
                buildCategory(1),
                buildCategory(2),
                buildCategory(3),
                buildCategory(4),
              ],
            ),
          ),
        ),
      ),
    ),
        const Divider(
          thickness: 1,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: _products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: _products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                        product: _products[index],
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
