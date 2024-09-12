 import 'package:bookly_app/features/home/repositry/home_repo.dart';
import 'package:bookly_app/features/home/repositry/home_repo_implement.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit({required this.homeRepo}):super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async {
   emit(NewestBooksLoading());
    var result =await  homeRepo.fetchNewestBooks();
    result.fold((l) {
      emit(NewestBooksFailure(errorMsg:l.errorMsg ));
    },
     (r){
      emit(NewestBooksSuccess( books:r));
     });
  }

}