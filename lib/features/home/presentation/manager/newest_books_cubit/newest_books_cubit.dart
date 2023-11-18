import 'package:book_wise_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_wise_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo _homeRepo;
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    var result = await _homeRepo.fetchNewestBooks();
    result.fold(
        //left and right
        (failure) => NewestBooksFailure(errMessage: failure.errMessage),
        (newestBooks) => NewestBooksSuccess(newestBooks: newestBooks));
  }
}
