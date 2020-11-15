import 'package:flutter/material.dart';
import 'package:my_shop_flutter/providers/cart.dart';
import 'package:my_shop_flutter/providers/orders.dart';
import 'package:my_shop_flutter/providers/products.dart';
import 'package:my_shop_flutter/screens/cart_screen.dart';
import 'package:my_shop_flutter/screens/edit_product_screen.dart';
import 'package:my_shop_flutter/screens/orders_screen.dart';
import 'package:my_shop_flutter/screens/product_detail_screen.dart';
import 'package:my_shop_flutter/screens/products_overview_screen.dart';
import 'package:my_shop_flutter/screens/user_products_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Orders()),
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: Center(
        child: Text('My amazing shop!'),
      ),
    );
  }
}
