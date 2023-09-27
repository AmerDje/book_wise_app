import 'package:book_wise_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //this or expanded to solve render box error
      height: 150,
      child: ListView.builder(
        // itemExtent: 100,//determine the size of the children
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const BooksListViewItem();
        },
      ),
    );
  }
}
