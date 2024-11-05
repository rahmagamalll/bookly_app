import 'package:bookly_app/Features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/Features/Search/presentation/manger/featch_search_books_cubit/featch_search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultBooksListView extends StatelessWidget {
  const ResultBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSearchBooksCubit, FeatchSearchBooksState>(
      builder: (context, state) {
        if (state is FeatchSearchBooksSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is FeatchSearchBooksFailure) {
          return Text('error : ${state.errMessage}');
        } else if (state is FeatchSearchBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Text('No Result');
        }
      },
    );
  }
}
