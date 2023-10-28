import 'package:book_wise_app/core/utils/assets.dart';
import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 24.0),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height / 3,
            child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Image.asset(
                  Assets.jungleBook,
                  fit: BoxFit.fill,
                )),
          ),
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle20.copyWith(
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text("Rudyard Kipling", style: Styles.textStyle18),
      ],
    );
  }
}
