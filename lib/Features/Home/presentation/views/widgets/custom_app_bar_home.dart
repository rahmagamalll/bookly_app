import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.logo,
              height: 30,
              width: 100,
            ),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRotuer.kSearchView);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              color: Colors.white,
              iconSize: 22,
            ),
          ],
        ),
      ),
    );
  }
}
