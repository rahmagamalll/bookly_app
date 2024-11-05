import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featch_similer_books_cubit/featch_similer_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_book.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<FeatchSimilerBooksCubit>(context)
        .featchSimilerBooks(widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

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
                child: CustomBookItem(
                  imageUrl: widget.bookModel.volumeInfo!.imageLinks!.thumbnail,
                  isNetworkImage: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                widget.bookModel.volumeInfo!.title!,
                style: Styles.textStyle30.copyWith(
                  fontFamily: 'GT Sectra Fine',
                ),
                textAlign: TextAlign.center,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  widget.bookModel.volumeInfo!.authors![0],
                  style: Styles.textStyle20
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              RatingBook(
                numberOfRates: widget.bookModel.volumeInfo!.pageCount!,
                rate: '4.5',
              ),
              const SizedBox(
                height: 10,
              ),
              BooksAction(
                bookModel: widget.bookModel,
              ),
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
