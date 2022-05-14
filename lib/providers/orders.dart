import 'package:flutter/material.dart';
import 'package:pirate_app/providers/cart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    required this.amount,
    required this.dateTime,
    required this.id,
    required this.products,
  });
}

class Orders with ChangeNotifier {
  // var timeStamp=DateTime.now();
  List<OrderItem> _orders = [
    OrderItem(
      amount: 12.67,
      dateTime: DateTime.now(),
      id: "1",
      products: [
        CartItem(
          id: "0",
          title: "Luffy Hat",
          quantity: 1,
          price: 12.67,
          size: "S",
        ),
      ],
    ),
  ];

  // Orders(this.authToken,this._orders,this.userId);

  List<OrderItem> get orders {
    return [..._orders];
  }

  // Future<void> fetchAndSetProducts() async {
  //   final Uri url= Uri.parse("https://shop-app-29cf9-default-rtdb.firebaseio.com/orders/$userId.json?auth=$authToken");

  //   final response = await http.get(url);
  //   final List<OrderItem> loadedOrders = [];
  //   final extractedData = jsonDecode(response.body) as Map<String, dynamic>;
  //   // ignore: unnecessary_null_comparison
  //   if(extractedData==null)
  //   {
  //     return;
  //   }
  //   extractedData.forEach(
  //     (orderId, orderData) {
  //       loadedOrders.add(
  //         OrderItem(
  //           amount: orderData['amount'],
  //           dateTime: DateTime.parse(orderData['dateTime']),
  //           id: orderId,
  //           products: (orderData['products'] as List<dynamic>)
  //               .map(
  //                 (e) => CartItem(
  //                   id: e['id'],
  //                   title: e['title'],
  //                   quantity: e['quantity'],
  //                   price: e['price'],
  //                   size: e['size'],
  //                 ),
  //               )
  //               .toList(),
  //         ),
  //       );
  //     },
  //   );
  //   _orders=loadedOrders.reversed.toList();
  //   notifyListeners();
  // }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    final timeStamp = DateTime.now();

    _orders.insert(
      0,
      OrderItem(
        amount: total,
        dateTime: timeStamp,
        id: timeStamp.toIso8601String(),
        products: cartProducts,
      ),
    );
    notifyListeners();
  }
}
