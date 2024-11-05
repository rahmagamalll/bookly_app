import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> featchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      print('dattaaaaaa==========$books');
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=programming&Filtering=free-ebooks&maxResults=15&&printType=books');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchSimilerBooks(
      {required String category}) async {
    {
      try {
        var data = await apiService.get(
            endPoint:
                'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$category');
        List<BookModel> books = [];
        for (var item in data['items']) {
          try {
            books.add(BookModel.fromJson(item));
          } on Exception catch (e) {
            // TODO
          }
        }

        return right(books);
      } catch (e) {
        if (e is DioException) {
          return left(
            ServerFailure.fromDioError(e),
          );
        }
        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
}
