import 'package:flutter/material.dart';
import 'package:pirate_app/models/map_model.dart';
import 'package:pirate_app/providers/orders.dart';
import 'package:pirate_app/widgets/maps.dart';
import 'package:pirate_app/widgets/order_data.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/piratepic.jfif'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jack Sparrow',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text('Pirate Rank'),
                    Text('1'),
                  ],
                ),
                Column(
                  children: const [
                    Text('Treasure'),
                    Text('\$1,000,000'),
                  ],
                ),
                Column(
                  children: const [
                    Text('Crew'),
                    Text('12'),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent Orders'),
                  OrderItemss(order: orderData.orders[0]),
                  if(orderData.orders.length>1)
                  OrderItemss(order: orderData.orders[1]),
                  // ListView.builder(
                  //   itemBuilder: (ctx, i) {
                  //     return OrderItemss(order: orderData.orders[i]);
                  //   },
                  //   itemCount: orderData.orders.length,
                  // ),
                  Divider(),
                  Text('Maps Explored'),
                  MapItem(dummy_maps[3]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
