import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchNewestBooks();
  Future<Either<Failure, List<BookModel>>> featchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> featchSimilerBooks({ required String category});
}
