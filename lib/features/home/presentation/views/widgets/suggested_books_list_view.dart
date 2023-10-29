import 'package:book_wise_app/core/utils/styles.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/suggested_books_list_view_item.dart';
import 'package:flutter/material.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("You may also like", style: Styles.textStyle18),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SuggestedBooksListViewItem();
                  }))
        ],
      ),
    );
  }
}
