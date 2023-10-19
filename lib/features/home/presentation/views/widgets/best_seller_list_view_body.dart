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
          Image.asset(
            Assets.jungleBook,
            height: 140,
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
                  child: const Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.headline2,
                  ),
                ),
                const Spacer(),
                const Text(
                  "J.K. Rowling",
                  style: Styles.headline3,
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 160,
                  child: const Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.headline4,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Icon(Icons.star, size: 18, color: Color(0xFFFFDD4F)),
                      Text(
                        " 4.5",
                        style: Styles.headline5,
                      ),
                      Spacer(),
                      Text(
                        "2390",
                        style: Styles.headline3,
                      ),
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
