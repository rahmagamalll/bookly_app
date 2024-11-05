import 'package:bookly_app/Features/Search/presentation/manger/featch_search_books_cubit/featch_search_books_cubit.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_search_text_filed.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/result_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchTextFeild(
          onChanged: (data) {
            BlocProvider.of<FeatchSearchBooksCubit>(context)
                .feachResult(title: data);
          },
        ),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'result',
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Expanded(
          child: ResultBooksListView(),
        ),
      ],
    );
  }
}
