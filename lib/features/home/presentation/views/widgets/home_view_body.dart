import 'package:book_wise_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/home_view_head.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final ScrollController bestSellerListViewController = ScrollController();
  bool isBestSellerListViewScrolled = false;
  @override
  void initState() {
    bestSellerListViewControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    bestSellerListViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Column(
        children: [
          const CustomAppBar(),
          HomeViewHead(
              isBestSellerListViewScrolled: isBestSellerListViewScrolled),
          BestSellerListView(
              bestSellerListViewController: bestSellerListViewController),
        ],
      ),
    );
  }

  void bestSellerListViewControllerListener() {
    bestSellerListViewController.addListener(() {
      isBestSellerListViewScrolled = bestSellerListViewController.offset >= 100;
      setState(() {});
    });
  }
}
