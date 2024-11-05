import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'featch_search_books_state.dart';

class FeatchSearchBooksCubit extends Cubit<FeatchSearchBooksState> {
  FeatchSearchBooksCubit(this.searchRepo) : super(FeatchSearchBooksInitial());
  SearchRepo searchRepo;

  feachResult({required String title}) async {
    emit(FeatchSearchBooksLoading());
    var result = await searchRepo.featchSearchBooks(title: title);
    result.fold(
      (Failure) {
        emit(FeatchSearchBooksFailure(errMessage: Failure.errMessage));
      },
      (books) {
        emit(FeatchSearchBooksSuccess(books: books));
      },
    );
  }
}
