import 'package:book_wise_app/core/errors/failure.dart';
import 'package:book_wise_app/core/services/api_service.dart';
import 'package:book_wise_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_wise_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    String endPoint =
        'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:fantasy';
    try {
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> newestBooks = [];
      for (var item in data['items']) {
        newestBooks.add(BookModel.fromJson(item));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    String endPoint = 'volumes?Filtering=free-ebooks&q=subject:fantasy';
    try {
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> featuredBooks = [];
      for (var item in data['items']) {
        featuredBooks.add(BookModel.fromJson(item));
      }
      return right(featuredBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
