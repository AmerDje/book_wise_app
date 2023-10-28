import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceAndPreview extends StatelessWidget {
  const PriceAndPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 150,
          height: 50,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          child: Text(
            "19.99 €",
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 150,
          height: 50,
          decoration: const BoxDecoration(
              color: Color(0xFFEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: const Text("Free Preview", style: Styles.textStyle18),
        )
      ],
    );
  }
}
