import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositry/home_repo.dart';


class SimilarBooksCubit extends Cubit<SimilarBooksStates>{
  SimilarBooksCubit({required this.homeRepo}):super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilartBooks({required String category})async {
    emit(SimilarBooksLoading());
    var result =await  homeRepo.fetchSimilartBooks(category: category);
    result.fold((l) {
      emit(SimilarBooksFailure(errorMsg:l.errorMsg ) as SimilarBooksStates  );
    },
            (r){
          emit(SimilarBooksSuccess( books:r));
        });
  }

}