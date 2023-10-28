import 'package:book_wise_app/core/utils/assets.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_wise_app/core/common/custom_app_bar.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/home_view_head.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CustomAppBar(
            widget: Image.asset(
              Assets.logo,
              width: 150,
            ),
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26,
            ),
          ),
          HomeViewHead(
              isBestSellerListViewScrolled: isBestSellerListViewScrolled),
          Expanded(
            child: BestSellerListView(
                bestSellerListViewController: bestSellerListViewController),
          ),
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
