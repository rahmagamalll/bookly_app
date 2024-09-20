import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xff04395E)),
      home: const SplashView(),
    );
  }
}
