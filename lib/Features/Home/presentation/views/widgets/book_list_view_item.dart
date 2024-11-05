import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_book.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRotuer.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookItem(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
              isNetworkImage: true,
            ),
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
                      bookModel.volumeInfo?.title! ?? '',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: 'GT Sectra Fine'),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      bookModel.volumeInfo?.authors?[0]?? '',
                      style: Styles.textStyle16,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                     const Text(
                        'Free',
                        style: Styles.textStyle20,
                      ),
                  const Spacer(),
                      RatingBook(
                        numberOfRates: bookModel.volumeInfo?.pageCount ?? 0, // Handle null pageCount
                        rate: '4.5'
                      )
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
