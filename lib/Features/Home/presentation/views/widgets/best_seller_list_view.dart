import 'package:bookly_app/Features/Home/presentation/manger/featch_feature_books_cubit/featch_feature_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchFeatureBooksCubit, FeatchFeatureBooksState>(
      builder: (context, state) {
        if (state is FeatchFeatureBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is FeatchFeatureBooksFailuer) {
          return Text('error:${state.errMessage}');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
