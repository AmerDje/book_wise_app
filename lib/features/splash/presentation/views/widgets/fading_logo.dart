import 'package:book_wise_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.fadeAnimation,
  });

  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: Image.asset(
        Assets.logo,
        scale: 1 / 2,
      ),
    );
  }
}
