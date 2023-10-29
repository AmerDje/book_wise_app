import 'package:book_wise_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SuggestedBooksListViewItem extends StatelessWidget {
  const SuggestedBooksListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 115,
            width: 80,
            child: Image.asset(
              Assets.jungleBook,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
