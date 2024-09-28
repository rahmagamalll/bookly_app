
import 'package:flutter/material.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
              color: Colors.white,
              iconSize: 25,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
              iconSize: 25,
            )
          ],
        ),
      ),
    );
  }
}
