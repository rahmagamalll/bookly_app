import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 30,
        ),
        SizedBox(
          width: 1,
        ),
        Text(
          '4.5',
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '(265)',
            style: Styles.textStyle16,
          ),
        )
      ],
    );
  }
}
