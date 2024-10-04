part of 'featch_feature_books_cubit.dart';

sealed class FeatchFeatureBooksState extends Equatable {
  const FeatchFeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchFeatureBooksInitial extends FeatchFeatureBooksState {}

final class FeatchFeatureBooksLoading extends FeatchFeatureBooksState {}

final class FeatchFeatureBooksSuccess extends FeatchFeatureBooksState {
  final List<BookModel> books;

  const FeatchFeatureBooksSuccess({required this.books});
}

final class FeatchFeatureBooksFailuer extends FeatchFeatureBooksState {
  final String errMessage;

  const FeatchFeatureBooksFailuer({required this.errMessage});
}
