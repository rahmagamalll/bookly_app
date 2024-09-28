import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CustomBookItem(),
        );
      },
      itemCount: 10,
    );
  }
}
