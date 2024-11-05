import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> featchSearchBooks({required String title});
}
