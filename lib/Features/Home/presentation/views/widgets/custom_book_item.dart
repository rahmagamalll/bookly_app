import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.test), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
