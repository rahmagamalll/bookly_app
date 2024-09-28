
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.color,
      required this.text,
      required this.borderRadius});
  final Color color;
  final String text;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      child: Text(
        text,
        style: Styles.textStyle20.copyWith(color: Colors.black),
      ),
    );
  }
}
