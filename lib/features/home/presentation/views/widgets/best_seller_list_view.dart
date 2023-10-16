import 'package:book_wise_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
    required this.bestSellerListViewController,
  });

  final ScrollController bestSellerListViewController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Best Seller",
              style: Styles.headline1,
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: bestSellerListViewController,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.red,
                  margin: const EdgeInsets.only(top: 8),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
