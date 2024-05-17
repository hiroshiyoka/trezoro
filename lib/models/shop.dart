import 'package:trezoro/models/product.dart';

class Shop {
  // Products for Sale
  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item Description...",
    ),
    // Product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item Description...",
    ),
    // Product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item Description...",
    ),
    // Product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item Description...",
    ),
  ];

  // User Cart
  List<Product> _cart = [];

  // Get Product List
  List<Product> get shop => _shop;

  // Get User Cart
  List<Product> get cart => _cart;

  // Add Item to Cart
  void addToCart(Product item) {
    _cart.add(item);
  }

  // Remove Item from Cart
  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
