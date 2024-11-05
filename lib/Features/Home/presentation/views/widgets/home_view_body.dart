
import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar_home.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(children: [
            const CustomAppBarHome(),
            SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: const BooksListView()),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Best Seller',
                style: Styles.textStyle20,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ]),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        ) //expanded
      ],
    );
  }
}
