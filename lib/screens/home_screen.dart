import 'package:flutter/material.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:pirate_app/screens/cart_screen.dart';
import 'package:pirate_app/widgets/badge.dart';
import 'package:pirate_app/widgets/body.dart';
import 'package:pirate_app/widgets/likes.dart';
import 'package:pirate_app/widgets/maps.dart';
import 'package:pirate_app/widgets/profile.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  final List<Widget> _widgets = [
    Body(),
    Likes(),
    Maps(),
    Profile(),
  ];
  Widget getWidget(int index) {
    return _widgets[index];
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Cart>(context);
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
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
              value: data.itemCount.toString(),
              color: Colors.green),
        ],
      ),
      body: getWidget(_currentIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() => _currentIndex = i);
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.map),
            title: const Text("Maps"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
