import 'package:bookly_app/Features/Home/presentation/manger/featch_similer_books_cubit/featch_similer_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSimilerBooksCubit, FeatchSimilerBooksState>(
      builder: (context, state) {
        if (state is FeatchSimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRotuer.kBookDetailsView,extra: state.books[index]);
                    },
                    child: CustomBookItem(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks!.thumbnail,
                      isNetworkImage: true,
                    ),
                  ),
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeatchSimilerBooksFailure) {
          return Text('error : ${state.errMessage}');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
