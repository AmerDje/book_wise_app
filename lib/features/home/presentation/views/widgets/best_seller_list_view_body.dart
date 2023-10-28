import 'package:book_wise_app/core/utils/assets.dart';
import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBody extends StatelessWidget {
  const BestSellerListViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Image.asset(
              Assets.jungleBook,
              height: 140,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 160,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14,
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle20,
                      ),
                      const Rating(),
                    ],
                  ),
                ),
                const Spacer()
              ],
            ),
          )
        ]),
      ),
    );
  }
}

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
