import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, size: 18, color: Color(0xFFFFDD4F)),
        const Text(
          " 4.5",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w300, color: const Color(0xFF707070)),
        ),
      ],
    );
  }
}
