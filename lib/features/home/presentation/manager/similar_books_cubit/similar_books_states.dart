
import '../../../data/models/book_model.dart';
import '../newest_books_cubit/newest_books_states.dart';

abstract class SimilarBooksStates{
}
class SimilarBooksInitial  extends SimilarBooksStates{}
class SimilarBooksLoading  extends SimilarBooksStates{}
class SimilarBooksSuccess  extends SimilarBooksStates{
  final List<BookModel>books;

  SimilarBooksSuccess({required this.books});
}
class SimilarBooksFailure  extends SimilarBooksStates{
  final String errorMsg;

  SimilarBooksFailure({required this.errorMsg});
}