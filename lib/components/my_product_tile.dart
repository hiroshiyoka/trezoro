import 'package:flutter/material.dart';
import 'package:trezoro/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          // Product Image
          Icon(Icons.favorite),

          // Product Name
          Text(product.name),

          // Product Description
          Text(product.description),

          // Product Price + Add to Cart Button
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
