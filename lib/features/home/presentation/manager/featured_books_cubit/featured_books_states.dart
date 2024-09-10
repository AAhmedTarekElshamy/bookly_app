import '../../../data/models/book_model.dart';

abstract class FeaturedBooksStates{}
class FeaturedBooksInitial  extends FeaturedBooksStates{}
class LoadingState extends FeaturedBooksStates{}
class SuccessState extends FeaturedBooksStates{
  final List<BookModel>list;

  SuccessState({required this.list});
}
class FailureState extends FeaturedBooksStates{
  final String errorMsg;

  FailureState({required this.errorMsg});
}
