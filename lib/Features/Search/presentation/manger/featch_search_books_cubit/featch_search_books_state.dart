part of 'featch_search_books_cubit.dart';

sealed class FeatchSearchBooksState extends Equatable {
  const FeatchSearchBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchSearchBooksInitial extends FeatchSearchBooksState {}

final class FeatchSearchBooksLoading extends FeatchSearchBooksState {}

final class FeatchSearchBooksSuccess extends FeatchSearchBooksState {
  final List<BookModel> books;

  const FeatchSearchBooksSuccess({required this.books});
}

final class FeatchSearchBooksFailure extends FeatchSearchBooksState {
  final String errMessage;

  const FeatchSearchBooksFailure({required this.errMessage});
}
