import 'package:book_wise_app/core/services/api_service.dart';
import 'package:book_wise_app/features/home/data/repo/home_repo_impl.dart';
import 'package:book_wise_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_wise_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerFactory(() => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()));
  getIt.registerFactory(() => NewestBooksCubit(getIt.get<HomeRepoImpl>()));
}
