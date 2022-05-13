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
      home: HomeScreen(), // add your screen here while developing & remove screen from here while creating a pull request
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        ProductDetailScreen.routeName:(context) =>  ProductDetailScreen( product: dummy_products[0]),
      },
    );
  }
}