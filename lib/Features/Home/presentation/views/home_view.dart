import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featch_newest_books_cubit/featch_newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/core/utils/service_lecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: HomeViewBody(),
      ),
    );
  }
}
