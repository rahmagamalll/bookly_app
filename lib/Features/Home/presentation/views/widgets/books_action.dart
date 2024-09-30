import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: CustomTextButton(
            color: Colors.white,
            text: r'19.99$',
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomTextButton(
            color: Color.fromARGB(255, 255, 167, 135),
            text: 'Free',
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }
}
