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
    );
  }
}
