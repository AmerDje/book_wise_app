import 'package:book_wise_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_wise_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo _homeRepo;

  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  Future<void> featuredBooksCubit() async {
    var result = await _homeRepo.fetchFeaturedBooks();

    result.fold(
        //returns left side as a failure and right side as featured books
        (failure) => FeaturedBooksFailure(errMessage: failure.errMessage),
        (featuredBooks) => FeaturedBooksSuccess(featuredBooks: featuredBooks));
  }
}
