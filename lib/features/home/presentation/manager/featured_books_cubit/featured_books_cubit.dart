// import 'package:bloc/bloc.dart';
// import 'package:bookly_app/features/home/repositry/home_repo.dart';
// import 'package:dartz/dartz.dart';
//
// import '../../../data/models/book_model.dart';
// import 'featured_books_states.dart';
// class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
//   FeaturedBooksCubit(this.homeRepo):  super(FeaturedBooksInitial()) ;
//   final HomeRepo homeRepo;
//   Future<void>fetchFeaturedBooks()async{
//     emit(LoadingState());
//     //List<BookModel> FeaturedBooksList
//     var result  =await  homeRepo.fetchFeaturedBooks() ;
//     result.fold((failure) {
//       emit(FailureState(errorMsg:failure.errorMsg
//      ));
//       }, (books) {
//      emit(SuccessState(list:books )) ;
//     });
//   }
// }