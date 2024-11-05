part of 'featch_similer_books_cubit.dart';

sealed class FeatchSimilerBooksState extends Equatable {
  const FeatchSimilerBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchSimilerBooksInitial extends FeatchSimilerBooksState {}

final class FeatchSimilerBooksLoading extends FeatchSimilerBooksState {}

final class FeatchSimilerBooksSuccess extends FeatchSimilerBooksState {
  final List<BookModel> books;

  const FeatchSimilerBooksSuccess({required this.books});
}

final class FeatchSimilerBooksFailure extends FeatchSimilerBooksState {
  final String errMessage;

 const FeatchSimilerBooksFailure({required this.errMessage});
}
