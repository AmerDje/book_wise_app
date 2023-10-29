import 'package:book_wise_app/constant.dart';
import 'package:book_wise_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookWiseApp());
}

class BookWiseApp extends StatelessWidget {
  const BookWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'BookWise Demo',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        //   this is the second way but you need to add copyWith function so you get a copy of ThemeData object and all its attributes
        //   brightness: Brightness.dark, //first way to get the dark mode in the app
        scaffoldBackgroundColor: kPrimaryColor,
        useMaterial3: true,
      ),
    );
  }
}
