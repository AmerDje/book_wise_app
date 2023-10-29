import 'package:book_wise_app/features/home/presentation/views/widgets/book_info.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/price_and_preview.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/rating.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/suggested_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
              widget: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 32,
                  )),
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                size: 28,
              )),
          const BookInfo(),
          const SizedBox(
            height: 15,
          ),
          const Rating(),
          const SizedBox(
            height: 35,
          ),
          const PriceAndPreview(),
          const SizedBox(
            height: 35,
          ),
          const SuggestedBooksListView()
        ],
      ),
    );
  }
}
