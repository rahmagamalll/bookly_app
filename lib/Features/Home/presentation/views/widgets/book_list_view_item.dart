import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_book.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRotuer.kBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            const CustomBookItem(imageUrl: '5555',),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'The Action Book The Action Book ',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: 'GT Sectra Fine'),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Opacity(
                    opacity: 0.8,
                    child: Text(
                      'The Action Book',
                      style: Styles.textStyle16,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Row(
                    children: [
                      Text(
                        r'19.99$',
                        style: Styles.textStyle20,
                      ),
                      Spacer(),
                      RatingBook()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
