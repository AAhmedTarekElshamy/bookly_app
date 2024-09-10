import '../../../data/models/book_model.dart';

abstract class NewestBooksStates{
}
class NewestBooksInitial  extends NewestBooksStates{}
class NewestBooksLoading  extends NewestBooksStates{}
class NewestBooksSuccess  extends NewestBooksStates{
  final List<BookModel>list;

  NewestBooksSuccess({required this.list});
}
 class NewestBooksFailure  extends NewestBooksStates{
  final String errorMsg;

  NewestBooksFailure({required this.errorMsg});
}