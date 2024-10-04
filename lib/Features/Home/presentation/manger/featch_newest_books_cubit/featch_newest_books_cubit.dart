import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';

part 'featch_newest_books_state.dart';

class FeatchNewestBooksCubit extends Cubit<FeatchNewestBooksState> {
  FeatchNewestBooksCubit(this.homeRepoImpl) : super(FeatchNewestBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  featchNewestBooks() async {
    emit(FeatchNewestBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepoImpl.featchNewestBooks();
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
