import 'package:book_wise_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewHead extends StatelessWidget {
  const HomeViewHead({
    super.key,
    required this.isBestSellerListViewScrolled,
  });

  final bool isBestSellerListViewScrolled;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: isBestSellerListViewScrolled ? 0 : 1,
      child: AnimatedContainer(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.topCenter,
        duration: const Duration(milliseconds: 200),
        height: isBestSellerListViewScrolled ? 0 : 240,
        width:
            isBestSellerListViewScrolled ? 0 : MediaQuery.sizeOf(context).width,
        child: const BooksListView(),
      ),
    );
  }
}
