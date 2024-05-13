import 'package:flutter/material.dart';
import '/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 25),

            // Title
            const Text(
              "Trezoro Minimal Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            // Subtitle
            Text(
              "Premium Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // Button
            MyButton(
              onTap: () {},
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
