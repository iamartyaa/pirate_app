import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:pirate_app/providers/orders.dart';
import 'package:pirate_app/providers/product.dart';
import 'package:pirate_app/screens/cart_screen.dart';
import 'package:pirate_app/screens/home_screen.dart';
import 'package:pirate_app/screens/introduction_screen.dart';
import 'package:pirate_app/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => Product(color: Colors.black,description: "",genre: '',id: "0",imageUrl: '',title: '',price: 0.0)),
        ),
        ChangeNotifierProvider(
          create: ((context) => Cart()),
        ),
        ChangeNotifierProvider(
            create: (context) => Orders(),
          ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pirate App',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: IntroductionScreen(),
        //HomeScreen(),
        //ProductDetailScreen(product: dummy_products[0]),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          ProductDetailScreen.routeName: (context) =>
              ProductDetailScreen(product: dummy_products[0]),
          CartScreen.routeName: (context) => CartScreen(),
        },
      ),
    );
  }
}
