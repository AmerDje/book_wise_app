import 'package:book_wise_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/home_view_head.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final ScrollController controller = ScrollController();
  bool isScrolled = false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      isScrolled = controller.offset >= 100;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CustomAppBar(),
          HomeViewHead(isScrolled: isScrolled),
          // BestSellerListView(controller: controller),
        ],
      ),
    );
  }
}
