import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'featch_similer_books_state.dart';

class FeatchSimilerBooksCubit extends Cubit<FeatchSimilerBooksState> {
  FeatchSimilerBooksCubit(this.homeRepo) : super(FeatchSimilerBooksInitial());

  final HomeRepo homeRepo;

  featchSimilerBooks(String category) async {
    emit(FeatchSimilerBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.featchSimilerBooks(category: category);
    result.fold(
      (Failure) {
        emit(FeatchSimilerBooksFailure(errMessage: Failure.errMessage));
      },
      (books) {
        emit(FeatchSimilerBooksSuccess(books: books));
      },
    );
  }
}
