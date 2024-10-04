import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(imageUrl: imageUrl,fit: BoxFit.fill,) ,
      ),
    );
  }
}
// Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(Assets.test), fit: BoxFit.fill),
//             borderRadius: BorderRadius.circular(12)),
//       )