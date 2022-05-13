import 'package:flutter/material.dart';
import 'package:pirate_app/dummy_products.dart';
import 'package:pirate_app/screens/home_screen.dart';
import 'package:pirate_app/screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pirate App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ,
      //HomeScreen(),
      //ProductDetailScreen(product: dummy_products[0]),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProductDetailScreen.routeName: (context) =>
            ProductDetailScreen(product: dummy_products[0]),
      },
    );
  }
}
