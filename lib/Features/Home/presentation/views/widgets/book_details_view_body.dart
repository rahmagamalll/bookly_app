import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_book.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarBookDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .27),
                child: const CustomBookItem(),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'The Action Book',
                style: Styles.textStyle30.copyWith(
                  fontFamily: 'GT Sectra Fine',
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'The Action Book',
                  style: Styles.textStyle20
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const RatingBook(),
              const SizedBox(
                height: 10,
              ),
              const BooksAction(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: Styles.textStyle20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilerBooksListView(),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
