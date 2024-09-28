import 'package:bookly_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body:  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child: HomeViewBody(),
    ),)  ;
  }
}