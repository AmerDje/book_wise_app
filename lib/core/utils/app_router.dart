import 'package:book_wise_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_wise_app/features/home/presentation/views/home_view.dart';
import 'package:book_wise_app/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
      routes: [
        GoRoute(
          path: 'bookDetails',
          builder: (context, state) => const BookDetails(),
        ),
      ],
    )
  ]);
}
