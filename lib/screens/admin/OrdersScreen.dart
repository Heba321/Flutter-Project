import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytest/constants.dart';
import 'package:mytest/models/order.dart';
import 'package:mytest/services/Store.dart';

class OrdersScreen extends StatelessWidget {
  static String id = 'OrdersScreen';
  final Store _store = Store();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _store.loadOrders(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text('there is no orders'),
            );
          } else {
            List<Order> orders = [];
            for (var doc in snapshot.data.documents) {
              orders.add(Order(
                address: doc.data[kAddress],
                totallPrice: doc.data[kTotallPrice],
              ));
            }
            return ListView.builder(
              itemBuilder: (context, index) =>
                  Text(orders[index].totallPrice.toString()),
              itemCount: orders.length,
            );
          }
        },
      ),
    );
  }
}