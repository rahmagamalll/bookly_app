import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'featch_feature_books_state.dart';

class FeatchFeatureBooksCubit extends Cubit<FeatchFeatureBooksState> {
  FeatchFeatureBooksCubit(this.homeRepo) : super(FeatchFeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeatureBooks() async {
    emit(FeatchFeatureBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.featchFeatureBooks();
    result.fold(
      (Failure) {
        emit(FeatchFeatureBooksFailuer(errMessage: Failure.errMessage));
      },
      (books) {
        emit(FeatchFeatureBooksSuccess(books: books));
      },
    );
  }
}
