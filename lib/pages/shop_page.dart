import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trezoro/components/my_product_tile.dart';
import 'package:trezoro/models/shop.dart';

import '/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access to Products in Shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          // Get each Individual Products from Shop
          final product = products[index];

          // Return as a Product Tile UI
          return MyProductTile(product: product);
        },
      ),
    );
  }
}
