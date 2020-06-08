import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytest/constants.dart';
import 'package:mytest/screens/admin/addProduct.dart';
import 'package:mytest/screens/admin/editProduct.dart';
import 'package:mytest/screens/admin/orders.dart';

class AdminHome extends StatelessWidget{
    static String id ='AdminHome';
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          RaisedButton(
            onPressed: () {
            Navigator.pushNamed(context, AddProduct.id);
            },
            child: Text('New Product'),
          ),
          RaisedButton(
            onPressed: () {
            Navigator.pushNamed(context, EditProduct.id);
            },
            child: Text('Edit Product'),
          ),
        RaisedButton(
            onPressed: () {
            Navigator.pushNamed(context, Orders.id);
            },
            child: Text('Orders'),
          ),        ],
      ),


    );
  }

}
