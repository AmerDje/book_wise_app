import 'package:book_wise_app/constant.dart';
import 'package:book_wise_app/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BookWiseApp());
}

class BookWiseApp extends StatelessWidget {
  const BookWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookWise Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
