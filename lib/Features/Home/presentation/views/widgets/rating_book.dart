import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
   RatingBook({super.key,  required this.rate,  required this.numberOfRates});
  final String rate;
 final  int numberOfRates;
  @override
  Widget build(BuildContext context) {
    return  Row(
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
          rate,
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '($numberOfRates)',
            style: Styles.textStyle16,
          ),
        )
      ],
    );
  }
}
