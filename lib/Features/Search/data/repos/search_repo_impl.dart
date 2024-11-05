import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this.apiService);
  ApiService apiService;
  Future<Either<Failure, List<BookModel>>> featchSearchBooks(
      {required String title}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=intitle:$title&Filtering=free-ebooks&maxResults=20&&printType=books');

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
}
