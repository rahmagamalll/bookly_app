import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(Assets.logo),
      
    ],);
  }
}
class CustomBook extends StatelessWidget {
  const CustomBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 100,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(Assets.test))),
    );
  }
}
