import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_text_button.dart';
import 'package:bookly_app/core/utils/helpers/launcher_url.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(
              child: CustomTextButton(
            color: Colors.white,
            text: 'Free',
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomTextButton(
            onPressed: () async {
              await launchCustomUr(context,bookModel.volumeInfo!.previewLink!);
            },
            color: const Color.fromARGB(255, 255, 167, 135),
            text: 'Preview',
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }
}
