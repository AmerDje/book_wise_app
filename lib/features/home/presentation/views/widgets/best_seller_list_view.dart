import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
    required this.controller,
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: controller,
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
