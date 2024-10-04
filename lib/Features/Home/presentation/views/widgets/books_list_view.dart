import 'package:bookly_app/Features/Home/presentation/manger/featch_newest_books_cubit/featch_newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchNewestBooksCubit, FeatchNewestBooksState>(
      builder: (context, state) {
        if (state is FeatchNewestBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomBookItem(imageUrl: state.bookList[index].volumeInfo!.imageLinks!.thumbnail!,),
              );
            },
            itemCount: state.bookList.length,
          );
        } else if (state is FeatchNewestBooksFailure) {
          return Text('error : ${state.errMessage}');
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
