import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl,  this.isNetworkImage=true});
  final String imageUrl;
   final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: isNetworkImage 
            ? CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
              )
            : Image.asset(
                imageUrl,  // Using `Image.asset` for local images
                fit: BoxFit.cover,
              ),
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