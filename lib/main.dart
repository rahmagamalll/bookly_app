import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featch_feature_books_cubit/featch_feature_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featch_newest_books_cubit/featch_newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_lecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupGetIt();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatchFeatureBooksCubit(getIt<HomeRepoImpl>())
            ..featchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => FeatchNewestBooksCubit(getIt<HomeRepoImpl>())
            ..featchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRotuer.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
