import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failuers,List<BookModel>>> featchBestSellerBooks(); 
 Future<Either<Failuers,List<BookModel>>> featchFeatureBooks();
}
