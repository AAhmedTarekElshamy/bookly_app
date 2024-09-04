import 'dart:convert';

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/repositry/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/utility/api_service.dart';

class HomeRepoImp extends HomeRepo{

    final ApiService apiService;

  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
try{
  var data= await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject=programming');
  // Assuming `data` is a JSON response and needs to be converted to `BookModel` list
  List<BookModel> books =  [];
  for(var item in data?['items']){
    books.add(BookModel.fromJson(item)) ;
    return Right(books);
  }
}catch(e){
  return Left(ServerFailure());
}

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {


    throw UnimplementedError();
  }

}