import 'package:book_wise_app/core/utils/assets.dart';
import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    style: Styles.headline2.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.spectral.toString(),
                    ),
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
                const PriceAndRating(),
                const Spacer()
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 160,
      child: const Row(
        children: [
          Text(
            "19.99 €",
            style: Styles.headline2,
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
    );
  }
}
