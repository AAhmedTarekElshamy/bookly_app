import '../../../data/models/book_model.dart';

abstract class FeaturedBooksStates{}
class FeaturedBooksInitial  extends FeaturedBooksStates{}
class LoadingState extends FeaturedBooksStates{}
class SuccessState extends FeaturedBooksStates{
  final List<BookModel>books;

  SuccessState({required this.books});
}
class FailureState extends FeaturedBooksStates{
  final String errorMsg;

  FailureState({required this.errorMsg});
}
