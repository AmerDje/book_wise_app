import 'package:book_wise_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class AnimatedBooksListViewItem extends StatelessWidget {
  const AnimatedBooksListViewItem({
    super.key,
    required this.firstVisibleItemIndex,
    required this.index,
  });

  final int firstVisibleItemIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: index == firstVisibleItemIndex ? 1 : 5,
          vertical: index == firstVisibleItemIndex ? 0.5 : 4,
        ),
        child: const BooksListViewItem());
  }
}
