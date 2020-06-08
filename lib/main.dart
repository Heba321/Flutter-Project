import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytest/provider/admiMode.dart';
import 'package:mytest/provider/cartItem.dart';
import 'package:mytest/provider/modelHud.dart';
import 'package:mytest/screens/admin/OrdersScreen.dart';
import 'package:mytest/screens/admin/addProduct.dart';
import 'package:mytest/screens/admin/adminHome.dart';
import 'package:mytest/screens/admin/editProduct.dart';
import 'package:mytest/screens/admin/manageProduct.dart';
import 'package:mytest/screens/admin/orders.dart';
import 'package:mytest/screens/login_screen.dart';
import 'package:mytest/screens/signup_screen.dart';
import 'package:mytest/screens/user/CartScreen.dart';
import 'package:mytest/screens/user/home_page.dart';
import 'package:mytest/screens/user/productInfo.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelHud>(
          create: (context) => ModelHud(),
        ),
        ChangeNotifierProvider<CartItem>(
          create: (context) => CartItem(),
        ),
        ChangeNotifierProvider<AdminMode>(
          create: (context) => AdminMode(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          OrdersScreen.id: (context) => OrdersScreen(),
          CartScreen.id: (context) => CartScreen(),
          ProductInfo.id: (context) => ProductInfo(),
          EditProduct.id: (context) => EditProduct(),
          ManageProducts.id: (context) => ManageProducts(),
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomePage.id: (context) => HomePage(),
          AdminHome.id: (context) => AdminHome(),
          AddProduct.id: (context) => AddProduct(),
          Orders.id: (context) => Orders(),

        },
      ),
    );
  }
}