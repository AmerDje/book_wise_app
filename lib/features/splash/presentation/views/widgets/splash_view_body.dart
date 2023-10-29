import 'package:book_wise_app/features/splash/presentation/views/widgets/fading_logo.dart';
import 'package:book_wise_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  //late CurvedAnimation curve;
  late Animation<Offset> slideAnimation;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width / 6),
            child: FadingLogo(fadeAnimation: fadeAnimation)),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slideAnimation: slideAnimation)
      ],
    );
  }

  void initAnimation() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // curve = CurvedAnimation( //?you can use this way instead of creating the animation
    //     parent: controller, curve: Curves.fastLinearToSlowEaseIn);
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    slideAnimation = Tween<Offset>(
            begin: const Offset(0, 1), end: const Offset(0, 0))
        .animate(
            controller); //Define the type of the tween here based on the animated widget you gonna use
    controller.forward();

    // slideAnimation.addListener(() { //listen to any changes in the ui and it is preferred to use animated builder and wrap it on the animated widget
    //   setState(() {});
    // });
    // fadeAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/homeView');
    });
  }
}
