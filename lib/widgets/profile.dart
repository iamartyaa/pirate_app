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
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      'Pirate Rank',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Treasure',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$1,000,000',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Pirate Crew',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '55',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Recent Orders',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  for (var item in orderData.orders) OrderItemss(order: item),
                  const Divider(),
                  const Text(
                    'Maps Explored',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  MapItem(dummy_maps[1]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
