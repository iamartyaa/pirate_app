import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pirate_app/widgets/badge.dart';
import 'package:pirate_app/widgets/body.dart';
import 'package:draggable_home/draggable_home.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Pirate Shop'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Badge(
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              value: 0.toString(),
              color: Colors.green),
        ],
      ),
      body: Body(),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        color: Theme.of(context).primaryColor,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
