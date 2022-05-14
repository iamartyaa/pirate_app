import 'package:flutter/material.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:provider/provider.dart';

class CartProducts extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;
  final String size;
  CartProducts({
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you Sure?'),
            content:
                const Text('Do you want to remove the Item from the Cart?'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text(
                  'NO',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text(
                  'YES',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        );
      },
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: FittedBox(child: Text('\$ ${price}',style: TextStyle(fontSize: 16),)),
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(color: Colors.black54,),
            ),
            subtitle: Text('Total: \$ ${price * quantity}'),
            trailing: Text('$quantity x'),
          ),
        ),
      ),
    );
  }
}
