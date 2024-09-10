 import 'package:bookly_app/features/home/repositry/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBookCubit extends Cubit<NewestBooksStates>{
  NewestBookCubit(this.homeRepo):super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async {
   emit(NewestBooksLoading());
    var result =await  homeRepo.fetchNewestBooks();
    result.fold((l) {
      emit(NewestBooksFailure(errorMsg:l.errorMsg ));
    },
     (r){
      emit(NewestBooksSuccess(list: r));
     });
  }

}