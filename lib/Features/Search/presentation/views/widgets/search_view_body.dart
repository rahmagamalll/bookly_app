import 'package:bookly_app/Features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextFeild(),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'result',
            style: Styles.textStyle20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ResultBooksListView(),
        ),
      ],
    );
  }
}

class ResultBooksListView extends StatelessWidget {
  const ResultBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: BookListViewItem(),
        );
      },
      itemCount: 10,
    );
    ;
  }
}

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SafeArea(
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.white)),
            suffixIcon: const Opacity(
              opacity: 0.7,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
