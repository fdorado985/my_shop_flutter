import 'package:flutter/material.dart';
import 'package:my_shop_flutter/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: 0,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: 1,
              ),
            ],
            onSelected: (int selectedValue) {
              print(selectedValue);
            },
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
