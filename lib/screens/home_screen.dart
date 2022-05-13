import 'package:flutter/material.dart';
import 'package:pirate_app/widgets/badge.dart';
import 'package:pirate_app/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName='/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pirate Island'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          Badge(
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  
                },
              ),
              value: 0.toString(),
              color: Colors.green),
        ],
      ),
      body: Body(),
    );
  }
}