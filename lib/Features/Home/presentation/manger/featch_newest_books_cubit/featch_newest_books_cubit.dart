import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';

part 'featch_newest_books_state.dart';

class FeatchNewestBooksCubit extends Cubit<FeatchNewestBooksState> {
  FeatchNewestBooksCubit(this.homeRepo) : super(FeatchNewestBooksInitial());
  
final HomeRepo homeRepo;

  featchNewestBooks() async {
    emit(FeatchNewestBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.featchNewestBooks();
    result.fold(
      (Failure) {
        emit(FeatchNewestBooksFailure(errMessage: Failure.errMessage));
      },
      (books) {
        emit(FeatchNewestBooksSuccess(bookList: books));
      },
    );
  }
}
