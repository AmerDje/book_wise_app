import 'package:book_wise_app/core/utils/styles.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
    required this.bestSellerListViewController,
  });

  final ScrollController bestSellerListViewController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 28.0, bottom: 12),
          child: Text(
            "Newest Books",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            controller: bestSellerListViewController,
            itemBuilder: (context, index) {
              return const NewestBooksListViewItem();
            },
          ),
        ),
      ],
    );
  }
}
