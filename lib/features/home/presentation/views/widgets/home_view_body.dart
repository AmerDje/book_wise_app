import 'package:book_wise_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [CustomAppBar(), BooksListView()],
      ),
    );
  }
}
